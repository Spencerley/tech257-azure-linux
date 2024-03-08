# Linux Processes
- Every process gets an id - PID
- TTY is the terminal session its associated with
- Commands to see processes for a snapshot of whats in memory:
    - `ps` - user processes
    - `ps -e` : all processes
    - `ps -aux` : insane amount of detail

- System processes also called *daemons*
- Commands to see processes for live commands:
    - `top` - ranked by amount of CPU being used
    - `Shift M` to get ranked by memory
    - `Shift N` to get ranked by newest ID
    - `Shift P` to get back to processor

- Command to put terminal to sleep:
    - `sleep 3`
    - Can use if you need the terminal to wait for something before running the rest of the script
    - `sleep 5000 &` - Sleep in the background
        - `kill <PID>` to end this process (or any other) **(YOU NEED TO KNOW WHAT YOU'RE KILLING)**
        - 64 levels of kill - default is to terminate (gracefully try to shut it down), won’t usually create a Zombie. Medium level of forcefulness.
        - If you absolutely have to kill: brute force kill - absolute last resort and the graceful kills aren’t working, you can use this as a **last** option. `kill -9 <PID>`
        - Most mild is `kill -1 <PID>`
        - Zombie processes:
![Alt text](<images/zombie processes.png>)

- Command `jobs` to see command running in the background

- pm2 command to shut down a process you wouldn’t normally kill with kill as the pm2 would likely just spin the nodejs app process back up as pm2 is responsible for keeping the app running.

- If you kill pm2 you’d most likely get a zombie nodejs app process which you’d have to manually handle.