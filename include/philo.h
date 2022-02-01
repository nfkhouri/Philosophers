#ifndef PHILO_H
# define PHILO_H

# include <stdio.h>
# include <sys/time.h>

int	main();
int	ft_isnumber(char *str);
int	error(int argc, char *argv[]);
long long	get_time(void);
long long	delta_time(long long time);
void	exec_action(long long time);

#endif