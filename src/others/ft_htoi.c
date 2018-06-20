/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_htoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ohamon <ohamon@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/12/14 14:08:11 by aledru            #+#    #+#             */
/*   Updated: 2018/06/20 23:50:19 by ohamon           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		get_int(char c)
{
	if (c < 'a' || c > 'f')
		if (c < 'A' || c > 'F')
			if (c < '0' || c > '9')
				return (0);
	if (c >= 'a' && c <= 'f')
		c = ft_toupper(c);
	if (c >= 'A' && c <= 'F')
		return (c - 'A' + 10);
	return (c - '0');
}

int		ft_htoi(char *hex)
{
	int				i;
	int				nb;
	int				power;
	int				j;

	j = 0;
	power = 1;
	nb = 0;
	if (!hex)
		return (0);
	if ((i = ft_strlen(hex) - 1) == 0)
		return (0);
	if (hex[j] == '0')
	{
		j++;
		if (hex[j] == 'x' || hex[j] == 'X')
			j++;
	}
	while (i >= j)
	{
		nb += get_int(hex[i]) * power;
		power *= 16;
		i--;
	}
	return (nb);
}
