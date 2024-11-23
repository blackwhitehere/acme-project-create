import os
from pytest import fixture
from acme_project_create import render_template_dirs, render_template_files, copy_template_dir

from dataclasses import dataclass

@dataclass
class DirnameArgs:
    dirname: str = "acme"

@dataclass
class J2TemplateArgs:
    name: str = "acme"

@fixture
def setup_for_dir_name_rendering():
    # gets directory of this file:
    tests_dir = os.path.dirname(os.path.abspath(__file__))
    temp_dir = copy_template_dir(os.path.join(tests_dir, "template_dirname"))
    args = DirnameArgs()
    render_template_dirs(temp_dir.name, args)
    return temp_dir

@fixture
def setup_for_j2_template_rendering():
    tests_dir = os.path.dirname(os.path.abspath(__file__))
    temp_dir = copy_template_dir(os.path.join(tests_dir, "template_j2template"))
    args = J2TemplateArgs()
    render_template_files(temp_dir.name, args)
    return temp_dir

def test_dir_name_rendering(setup_for_dir_name_rendering):
    temp_dir = setup_for_dir_name_rendering
    assert "acme" in os.listdir(temp_dir.name)

def test_j2_template_rendering(setup_for_j2_template_rendering):
    temp_dir = setup_for_j2_template_rendering
    assert "myfile.py" in os.listdir(temp_dir.name)
    # check first line of the file is as expected
    with open(os.path.join(temp_dir.name, "myfile.py")) as file:
        first_line = file.readline()
        assert first_line == 'name = "acme"\n'