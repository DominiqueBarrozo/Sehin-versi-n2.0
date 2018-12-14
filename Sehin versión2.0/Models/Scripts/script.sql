USE [EJEMPLOHYS]
GO
SET IDENTITY_INSERT [dbo].[CondicionIvaSet] ON 

INSERT [dbo].[CondicionIvaSet] ([Id], [Descripcion], [PorcentajeIva], [DiscriminaIva], [LetraFiscal]) VALUES (1, N'RESPONSABLE INSCRIPTO', 21, 1, N'R')
SET IDENTITY_INSERT [dbo].[CondicionIvaSet] OFF
SET IDENTITY_INSERT [dbo].[ProvinciasSet] ON 

INSERT [dbo].[ProvinciasSet] ([Id], [Nombre]) VALUES (1, N'CORDOBA')
SET IDENTITY_INSERT [dbo].[ProvinciasSet] OFF
SET IDENTITY_INSERT [dbo].[LocalidadesSet] ON 

INSERT [dbo].[LocalidadesSet] ([Id], [Nombre], [ProvinciasId], [CodigoPostal]) VALUES (1, N'CORDOBA', 1, N'5000')
SET IDENTITY_INSERT [dbo].[LocalidadesSet] OFF
SET IDENTITY_INSERT [dbo].[ClientesSet] ON 

INSERT [dbo].[ClientesSet] ([Id], [RazonSocial], [CUIT], [IngBrutos], [CondicionIvaId], [LocalidadesId]) VALUES (2, N'CLIENTE 1', N'27-00000000-8', N'988798', 1, 1)
SET IDENTITY_INSERT [dbo].[ClientesSet] OFF
SET IDENTITY_INSERT [dbo].[ActividadesEconomicasSet] ON 

INSERT [dbo].[ActividadesEconomicasSet] ([Id], [Descripcion]) VALUES (1, N'ACTIV')
SET IDENTITY_INSERT [dbo].[ActividadesEconomicasSet] OFF
SET IDENTITY_INSERT [dbo].[EstablecimientosSet] ON 

INSERT [dbo].[EstablecimientosSet] ([Id], [Nombre], [CantTrabajadores], [Superficie], [ART], [Domicilio], [ClientesId], [LocalidadesId], [ActividadesEconomicasId]) VALUES (7, N'Establecimiento', 50, 1000, N'ART', N'BV LOS GRANADEROS 335', 2, 1, 1)
SET IDENTITY_INSERT [dbo].[EstablecimientosSet] OFF
SET IDENTITY_INSERT [dbo].[TécnicosSet] ON 

INSERT [dbo].[TécnicosSet] ([Legajo], [Nombre], [TipoDoc], [NumeroDoc], [Domicilio], [Email], [Telefono], [LocalidadesId]) VALUES (3, N'Juan', N'dni', N'336656478', N'COLON 321', N'm@n.com', N'333555441', 1)
SET IDENTITY_INSERT [dbo].[TécnicosSet] OFF
SET IDENTITY_INSERT [dbo].[PuestosSet] ON 

INSERT [dbo].[PuestosSet] ([Id], [TareasPuestoId]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[PuestosSet] OFF
SET IDENTITY_INSERT [dbo].[TrabajadoresSet] ON 

INSERT [dbo].[TrabajadoresSet] ([Id], [nombre]) VALUES (1, N'Traba     ')
SET IDENTITY_INSERT [dbo].[TrabajadoresSet] OFF
SET IDENTITY_INSERT [dbo].[MáquinasSet] ON 

INSERT [dbo].[MáquinasSet] ([Id], [Descripcion]) VALUES (1, N'Maquina')
SET IDENTITY_INSERT [dbo].[MáquinasSet] OFF
SET IDENTITY_INSERT [dbo].[TipoRiesgosSet] ON 

INSERT [dbo].[TipoRiesgosSet] ([Id], [Descripcion]) VALUES (1, N'TipoR1')
SET IDENTITY_INSERT [dbo].[TipoRiesgosSet] OFF
SET IDENTITY_INSERT [dbo].[RiesgosSet] ON 

INSERT [dbo].[RiesgosSet] ([Id], [Factor], [CondicionTrabajo], [TipoRiesgosId]) VALUES (2, N'ALTO', N'Condi', 1)
SET IDENTITY_INSERT [dbo].[RiesgosSet] OFF
SET IDENTITY_INSERT [dbo].[MedidasPreventivasSet] ON 

INSERT [dbo].[MedidasPreventivasSet] ([Id], [descripcion]) VALUES (1, N'Medidap1  ')
SET IDENTITY_INSERT [dbo].[MedidasPreventivasSet] OFF
SET IDENTITY_INSERT [dbo].[ServicioSet] ON 

INSERT [dbo].[ServicioSet] ([Id], [nombre], [precio], [activo]) VALUES (1, N'Implementacion Servicios de Seguridad e Higiene', 100, 1)
SET IDENTITY_INSERT [dbo].[ServicioSet] OFF
SET IDENTITY_INSERT [dbo].[OrdenTrabajoSet] ON 


