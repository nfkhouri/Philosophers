#include "philo.h"

int	error(int argc, char *argv[])
{
	int	i;

	i = 1;
	if(argc < 5 || argc > 6)
	{
		printf("Error: Program must contain 4 or 5 arguments.");
		return(-1);
	}
	while(i < argc)
	{
		if(ft_isnumber(argv[i]))
		{
			printf("Error: Arguments must not contain letters.");
			return(0);
		}
		i++;
	}
	return(1);
}