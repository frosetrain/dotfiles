"""The command line interface."""

import click

from change import change_theme


@click.command()
@click.option("--theme", prompt="Desired theme", help="The theme to apply.")
def hello(theme):
    """Apply the color scheme."""
    click.echo(f"Applying {theme}")
    change_theme(theme)


if __name__ == "__main__":
    hello()
