import psutil

def get_system_times():
    system_times = psutil.cpu_times()
    
    user_mode_time = system_times.user
    kernel_mode_time = system_times.system
    idle_time = system_times.idle
    priority_user_mode_time = system_times.nice
    io_wait_time = system_times.iowait
    hardware_interrupt_time = system_times.irq
    software_interrupt_time = system_times.softirq
    virtual_environment_time = system_times.steal
    guest_cpu_time = system_times.guest

    return {
        "Time spent by normal processes executing in user mode": user_mode_time,
        "Time spent by processes executing in kernel mode": kernel_mode_time,
        "Time when system was idle": idle_time,
        "Time spent by priority processes executing in user mode": priority_user_mode_time,
        "Time spent waiting for I/O to complete": io_wait_time,
        "Time spent for servicing hardware interrupts": hardware_interrupt_time,
        "Time spent for servicing software interrupts": software_interrupt_time,
        "Time spent by other operating systems running in a virtualized environment": virtual_environment_time,
        "Time spent running a virtual CPU for guest operating systems": guest_cpu_time
    }

if __name__ == "__main__":
    system_times_info = get_system_times()
    for key, value in system_times_info.items():
        print(f"{key}: {value} seconds")