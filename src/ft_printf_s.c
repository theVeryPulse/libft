/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_s.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Philip <juli@student.42london.com>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/14 16:12:12 by juli              #+#    #+#             */
/*   Updated: 2024/02/03 18:44:21 by Philip           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ftprintf.h"

/* Prints a string to terminal, returns string length.
 */
int	ft_printf_s(char *s)
{
	int	len;

	if (s == NULL)
	{
		len = 6;
		write(STDOUT_FILENO, "(null)", len);
	}
	else
	{
		len = (int)ft_strlen(s);
		write(STDOUT_FILENO, s, len);
	}
	return (len);
}
