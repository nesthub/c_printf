/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mlinhard <mlinhard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/01/25 03:23:43 by mlinhard          #+#    #+#             */
/*   Updated: 2016/02/10 21:43:10 by mlinhard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int		main(int argc, char **argv)
{
	// int		test = 1;
	// char	*s1;
	// s1 = ft_strdup("%%abcd%*+-54-%a%%\n");

	// while (test--)
	// 	ft_printf(s1);
	// ft_strdel(&s1);

	// if (argc && argv)
	// 	;

	char	*s1;
	char	*s2;
	long long int	s3;
	// wchar_t s4[50] = L"Salut G\x82rard !";
	char	*src;
	int		taille;
	int		ret = 0;

	ret += 1;
	if (argc && argv)
		;
	taille = 10;
	s1 = ft_strdup("% 0#12.9x!\n");
	s2 = ft_strdup("s2ahah");
	src = s1;

	ft_printf(s1, 42);
	printf(s1, 42);

	s3 = (unsigned int)&s1;
	printf("%p\n", s1);
	printf("0x");
	printf("%llx\n", s3);

	printf("%#5.4o\n", 9);

	// printf("\n\nRETURN: %d\n", ret);
	ft_strdel(&s1);
	ft_strdel(&s2);
	// ft_strdel(&s3);

	return (0);
}
