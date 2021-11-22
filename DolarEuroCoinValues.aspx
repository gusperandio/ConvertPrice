if (colMoedaEuro.Count > 0 || colMoedaDol.Count > 0)
                            {
                                switch (moedaRel)
                                {
                                    case 1:
                                        switch (becConvercao.getPropertyValorInteiro("ID_MOEDA"))
                                        {
                                            case 1:
                                                valorConvertido += valor;
                                                export = valor;
                                                break;
                                            case 3:
                                                valorConvertido += valor * dolar;
                                                export = valor * dolar;
                                                break;
                                            case 4:
                                                valorConvertido += valor * euro;
                                                export = valor * euro;
                                                break;
                                            default:
                                                break;
                                        }
                                        break;
                                    case 3:
                                        switch (becConvercao.getPropertyValorInteiro("ID_MOEDA"))
                                        {
                                            case 1:
                                                valorConvertido += valor / dolar;
                                                export = valor / dolar;
                                                break;
                                            case 3:
                                                valorConvertido += valor;
                                                export = valor;
                                                break;
                                            case 4:
                                                valorConvertido += (valor * euro) / dolar;
                                                export = (valor * euro) / dolar;
                                                break;
                                            default:
                                                break;
                                        }
                                        break;
                                    case 4:
                                        switch (becConvercao.getPropertyValorInteiro("ID_MOEDA"))
                                        {
                                            case 1:
                                                valorConvertido += valor / euro;
                                                export = valor / euro;

                                                break;
                                            case 3:
                                                valorConvertido += (valor * dolar) / euro;
                                                export = (valor * dolar) / euro;
                                                break;
                                            case 4:
                                                valorConvertido += valor;
                                                export = valor;
                                                break;
                                            default:
                                                break;
                                        }
                                        break;
                                    default:
                                        break;
                                }
                            }
