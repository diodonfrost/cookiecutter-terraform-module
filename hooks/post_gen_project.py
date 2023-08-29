import os
import shutil


def remove_file_or_directory(path: str) -> None:
    """Remove a file or directory.

    Args:
        path: Path to the file or directory to remove.

    """
    if os.path.isfile(path):
        os.remove(path)
    elif os.path.isdir(path):
        shutil.rmtree(path)


def strtobool(value: str) -> bool:
    """Convert string to boolean.

    Args:
        value: Value to convert.

    Returns:
        Boolean value.

    """
    return value.lower() in ("yes", "y", "true", "t", "1")


def remove_unneeded_files() -> None:
    """Remove unneeded files."""
    if not dev_container:
        remove_file_or_directory(".devcontainer")

    if project_licenses == "Apache Software License 2.0":
        shutil.move(os.path.join("_licenses", "Apache-2"), "LICENSE")
        remove_file_or_directory("_licenses")

    if project_licenses == "BSD-3":
        shutil.move(os.path.join("_licenses", "BSD-3"), "LICENSE")
        remove_file_or_directory("_licenses")

    if project_licenses == "GNU GPL v3.0":
        shutil.move(os.path.join("_licenses", "GPL-3"), "LICENSE")
        remove_file_or_directory("_licenses")

    if project_licenses == "MIT":
        shutil.move(os.path.join("_licenses", "MIT"), "LICENSE")
        remove_file_or_directory("_licenses")

    if project_licenses == "Mozilla Public License 2.0":
        shutil.move(os.path.join("_licenses", "Mozilla-2.0"), "LICENSE")
        remove_file_or_directory("_licenses")


if __name__ == "__main__":
    dev_container = strtobool("{{cookiecutter.dev_container}}")
    project_licenses = "{{cookiecutter.license}}"
    remove_unneeded_files()
