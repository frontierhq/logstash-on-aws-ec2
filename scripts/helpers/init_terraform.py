from python_terraform import Terraform


def init_terraform(working_dir: str):
    print(f"initialising terraform in '{working_dir}'")

    terraform = Terraform(working_dir=working_dir)

    return_code, _, _ = terraform.init(capture_output=False)
    if (return_code != 0):
        exit(return_code)

    return terraform


def _test():
    raise NotImplementedError


if __name__ == "__main__":
    _test()
