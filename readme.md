# Backup Script Documentation

This script is designed to create a backup of a specified directory using the `tar` command and compress it into a gzip-compressed tarball. The backup file is saved in the specified destination directory with a timestamp in the file name.

## Usage

1. Edit the script (`backup.sh`) and set the `destination_dir` variable to the desired backup destination directory.

2. Make the script executable by running the following command in the terminal:

    ```bash
    chmod +x backup_script.sh
    ./backup.sh
    ```
3. To schedule the script to run automatically every 3 months, we will use cron.

- Open a terminal and the following command to edit the crontab file

    ```bash
    crontab -e
    ````
- If prompted, choose your preferred text editor and add the following line to the crontab file:

    ```bash
    0 0 1 */3 * /path/to/script.sh
    ````
This cron schedule will run the backup script at 12:00 AM on the 1st day of every 3rd month.

- Save the changes and exit the text editor.


## Customization
- To back up a different directory, modify the **source_dir** variable in the script to the desired directory path.

- If you want to change the backup file name format, adjust the **timestamp** and **backup_file_name** variables in the script. You can refer to the date command's documentation for different formatting options.


## Troubleshooting
If the backup creation fails, check the error message displayed by the script. Common issues can include insufficient permissions, incorrect directory paths, or disk space limitations.