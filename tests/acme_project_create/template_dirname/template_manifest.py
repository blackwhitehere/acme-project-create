import argparse

def configure_parser(parser: argparse.ArgumentParser) -> argparse.ArgumentParser:
    parser.add_argument(
        "-dirname", required=True, type=str
    )
    return parser