/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ohamon <ohamon@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/08 03:56:32 by aledru            #+#    #+#             */
/*   Updated: 2018/06/20 23:50:19 by ohamon           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_strncmp(const char *str1, const char *str2, size_t n)
{
	int i;

	i = 0;
	if (n != 0)
	{
		while (str1[i] && str2[i] && str1[i] == str2[i] && i < (int)n - 1)
			i++;
		return ((unsigned char)str1[i] - (unsigned char)str2[i]);
	}
	return (0);
}
