import os

def rename_files_to_kebab_case(directory):
    files = os.listdir(directory)

    for file_name in files:
        old_path = os.path.join(directory, file_name)

        new_file_name = file_name.replace(' ', '-').lower()

        new_path = os.path.join(directory, new_file_name)

        os.rename(old_path, new_path)
        print(f'Renamed: {file_name} -> {new_file_name}')

if __name__ == "__main__":
    target_directory = str(input("Enter the path of the directory:"))

    rename_files_to_kebab_case(target_directory)
