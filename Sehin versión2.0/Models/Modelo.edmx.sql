
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/22/2018 13:55:50
-- Generated from EDMX file: C:\Users\Domi.Barrozo\Desktop\Sehin\Sehin versión2.0\Sehin versión2.0\Models\Modelo.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EJEMPLOHYS];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_EstablecimientosClientes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstablecimientosSet] DROP CONSTRAINT [FK_EstablecimientosClientes];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientesCondicionIva]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientesSet] DROP CONSTRAINT [FK_ClientesCondicionIva];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientesLocalidades]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientesSet] DROP CONSTRAINT [FK_ClientesLocalidades];
GO
IF OBJECT_ID(N'[dbo].[FK_ContactoLocalidades]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContactoSet] DROP CONSTRAINT [FK_ContactoLocalidades];
GO
IF OBJECT_ID(N'[dbo].[FK_LocalidadesProvincias]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LocalidadesSet] DROP CONSTRAINT [FK_LocalidadesProvincias];
GO
IF OBJECT_ID(N'[dbo].[FK_EstablecimientosLocalidades]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstablecimientosSet] DROP CONSTRAINT [FK_EstablecimientosLocalidades];
GO
IF OBJECT_ID(N'[dbo].[FK_EstablecimientosActividadesEconomicas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EstablecimientosSet] DROP CONSTRAINT [FK_EstablecimientosActividadesEconomicas];
GO
IF OBJECT_ID(N'[dbo].[FK_TécnicosLocalidades]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TécnicosSet] DROP CONSTRAINT [FK_TécnicosLocalidades];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdenTrabajoPuestos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrdenTrabajoSet] DROP CONSTRAINT [FK_OrdenTrabajoPuestos];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdenTrabajoTrabajadores]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrdenTrabajoSet] DROP CONSTRAINT [FK_OrdenTrabajoTrabajadores];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdenTrabajoMáquinas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrdenTrabajoSet] DROP CONSTRAINT [FK_OrdenTrabajoMáquinas];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdenTrabajoRiesgos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrdenTrabajoSet] DROP CONSTRAINT [FK_OrdenTrabajoRiesgos];
GO
IF OBJECT_ID(N'[dbo].[FK_RiesgosTipoRiesgos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RiesgosSet] DROP CONSTRAINT [FK_RiesgosTipoRiesgos];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdenTrabajoMedidasPreventivas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrdenTrabajoSet] DROP CONSTRAINT [FK_OrdenTrabajoMedidasPreventivas];
GO
IF OBJECT_ID(N'[dbo].[FK_AgendaTécnicos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AgendaSet] DROP CONSTRAINT [FK_AgendaTécnicos];
GO
IF OBJECT_ID(N'[dbo].[FK_AgendaOrdenTrabajo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AgendaSet] DROP CONSTRAINT [FK_AgendaOrdenTrabajo];
GO
IF OBJECT_ID(N'[dbo].[FK_AgendaEstablecimientos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AgendaSet] DROP CONSTRAINT [FK_AgendaEstablecimientos];
GO
IF OBJECT_ID(N'[dbo].[FK_PresupuestoClientes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PresupuestoSet] DROP CONSTRAINT [FK_PresupuestoClientes];
GO
IF OBJECT_ID(N'[dbo].[FK_AccidentesPuestos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AccidentesSet] DROP CONSTRAINT [FK_AccidentesPuestos];
GO
IF OBJECT_ID(N'[dbo].[FK_AccidentesTrabajadores]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AccidentesSet] DROP CONSTRAINT [FK_AccidentesTrabajadores];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanesFormacionCursos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlanesFormacionSet] DROP CONSTRAINT [FK_PlanesFormacionCursos];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanesFormacionTrabajadores]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlanesFormacionSet] DROP CONSTRAINT [FK_PlanesFormacionTrabajadores];
GO
IF OBJECT_ID(N'[dbo].[FK_DetallePresupuestoServicio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetallePresupuestoSet] DROP CONSTRAINT [FK_DetallePresupuestoServicio];
GO
IF OBJECT_ID(N'[dbo].[FK_PresupuestoDetallePresupuesto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetallePresupuestoSet] DROP CONSTRAINT [FK_PresupuestoDetallePresupuesto];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientesContacto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContactoSet] DROP CONSTRAINT [FK_ClientesContacto];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ClientesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClientesSet];
GO
IF OBJECT_ID(N'[dbo].[EstablecimientosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstablecimientosSet];
GO
IF OBJECT_ID(N'[dbo].[ContactoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContactoSet];
GO
IF OBJECT_ID(N'[dbo].[PresupuestoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PresupuestoSet];
GO
IF OBJECT_ID(N'[dbo].[DetallePresupuestoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetallePresupuestoSet];
GO
IF OBJECT_ID(N'[dbo].[TécnicosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TécnicosSet];
GO
IF OBJECT_ID(N'[dbo].[AgendaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AgendaSet];
GO
IF OBJECT_ID(N'[dbo].[PuestosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PuestosSet];
GO
IF OBJECT_ID(N'[dbo].[TrabajadoresSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrabajadoresSet];
GO
IF OBJECT_ID(N'[dbo].[MáquinasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MáquinasSet];
GO
IF OBJECT_ID(N'[dbo].[RiesgosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RiesgosSet];
GO
IF OBJECT_ID(N'[dbo].[TipoRiesgosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoRiesgosSet];
GO
IF OBJECT_ID(N'[dbo].[AccidentesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AccidentesSet];
GO
IF OBJECT_ID(N'[dbo].[MedidasPreventivasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MedidasPreventivasSet];
GO
IF OBJECT_ID(N'[dbo].[OrdenTrabajoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrdenTrabajoSet];
GO
IF OBJECT_ID(N'[dbo].[PlanesFormacionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlanesFormacionSet];
GO
IF OBJECT_ID(N'[dbo].[DetallePlanesFormacionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetallePlanesFormacionSet];
GO
IF OBJECT_ID(N'[dbo].[CursosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CursosSet];
GO
IF OBJECT_ID(N'[dbo].[CondicionIvaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CondicionIvaSet];
GO
IF OBJECT_ID(N'[dbo].[ProvinciasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProvinciasSet];
GO
IF OBJECT_ID(N'[dbo].[LocalidadesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LocalidadesSet];
GO
IF OBJECT_ID(N'[dbo].[ActividadesEconomicasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActividadesEconomicasSet];
GO
IF OBJECT_ID(N'[dbo].[TareasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TareasSet];
GO
IF OBJECT_ID(N'[dbo].[ServicioSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ServicioSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ClientesSet'
CREATE TABLE [dbo].[ClientesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RazonSocial] nvarchar(max)  NOT NULL,
    [CUIT] nvarchar(max)  NOT NULL,
    [IngBrutos] nvarchar(max)  NOT NULL,
    [CondicionIvaId] int  NOT NULL,
    [LocalidadesId] int  NOT NULL
);
GO

-- Creating table 'EstablecimientosSet'
CREATE TABLE [dbo].[EstablecimientosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [CantTrabajadores] smallint  NOT NULL,
    [Superficie] float  NOT NULL,
    [ART] nvarchar(max)  NOT NULL,
    [Domicilio] nvarchar(max)  NOT NULL,
    [ClientesId] int  NOT NULL,
    [LocalidadesId] int  NOT NULL,
    [ActividadesEconomicasId] int  NOT NULL
);
GO

-- Creating table 'ContactoSet'
CREATE TABLE [dbo].[ContactoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [TipoDoc] nvarchar(max)  NOT NULL,
    [NumeroDoc] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [Domicilio] nvarchar(max)  NOT NULL,
    [Foto] nvarchar(max)  NOT NULL,
    [LocalidadesId] int  NOT NULL,
    [ClientesId] int  NOT NULL
);
GO

-- Creating table 'PresupuestoSet'
CREATE TABLE [dbo].[PresupuestoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ClientesId] int  NOT NULL,
    [Fecha] datetime  NOT NULL,
    [numero] int  NOT NULL,
    [fechavencimiento] datetime  NOT NULL
);
GO

-- Creating table 'DetallePresupuestoSet'
CREATE TABLE [dbo].[DetallePresupuestoSet] (
    [id] int IDENTITY(1,1) NOT NULL,
    [Monto] float  NOT NULL,
    [ServicioId] int  NOT NULL,
    [descripcion] nvarchar(max)  NOT NULL,
    [cantidad] float  NOT NULL,
    [preciounitario] float  NOT NULL,
    [descuento] float  NOT NULL,
    [PresupuestoId] int  NOT NULL
);
GO

-- Creating table 'TécnicosSet'
CREATE TABLE [dbo].[TécnicosSet] (
    [Legajo] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [TipoDoc] nvarchar(max)  NOT NULL,
    [NumeroDoc] nvarchar(max)  NOT NULL,
    [Domicilio] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [LocalidadesId] int  NOT NULL
);
GO

-- Creating table 'AgendaSet'
CREATE TABLE [dbo].[AgendaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Fecha] nvarchar(max)  NOT NULL,
    [Estado] nvarchar(max)  NOT NULL,
    [TécnicosLegajo] int  NOT NULL,
    [OrdenTrabajoId] int  NOT NULL,
    [EstablecimientosId] int  NOT NULL
);
GO

-- Creating table 'PuestosSet'
CREATE TABLE [dbo].[PuestosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TareasPuestoId] int  NOT NULL
);
GO

-- Creating table 'TrabajadoresSet'
CREATE TABLE [dbo].[TrabajadoresSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'MáquinasSet'
CREATE TABLE [dbo].[MáquinasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RiesgosSet'
CREATE TABLE [dbo].[RiesgosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Factor] nvarchar(max)  NOT NULL,
    [CondicionTrabajo] nvarchar(max)  NOT NULL,
    [TipoRiesgosId] int  NOT NULL
);
GO

-- Creating table 'TipoRiesgosSet'
CREATE TABLE [dbo].[TipoRiesgosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AccidentesSet'
CREATE TABLE [dbo].[AccidentesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PuestosId] int  NOT NULL,
    [TrabajadoresId] int  NOT NULL,
    [Fecha] nvarchar(max)  NOT NULL,
    [Consecuencia] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MedidasPreventivasSet'
CREATE TABLE [dbo].[MedidasPreventivasSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'OrdenTrabajoSet'
CREATE TABLE [dbo].[OrdenTrabajoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [fechainicio] datetime  NOT NULL,
    [fechafin] datetime  NOT NULL,
    [estado] nvarchar(max)  NOT NULL,
    [finalizado] bit  NOT NULL,
    [PuestosId] int  NULL,
    [TrabajadoresId] int  NULL,
    [MáquinasId] int  NULL,
    [RiesgosId] int  NULL,
    [MedidasPreventivasId] int  NULL
);
GO

-- Creating table 'PlanesFormacionSet'
CREATE TABLE [dbo].[PlanesFormacionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [CursosId] int  NOT NULL,
    [TrabajadoresId] int  NOT NULL,
    [Fecha] nvarchar(max)  NOT NULL,
    [Estado] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DetallePlanesFormacionSet'
CREATE TABLE [dbo].[DetallePlanesFormacionSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'CursosSet'
CREATE TABLE [dbo].[CursosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CondicionIvaSet'
CREATE TABLE [dbo].[CondicionIvaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [PorcentajeIva] float  NOT NULL,
    [DiscriminaIva] bit  NOT NULL,
    [LetraFiscal] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ProvinciasSet'
CREATE TABLE [dbo].[ProvinciasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LocalidadesSet'
CREATE TABLE [dbo].[LocalidadesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [ProvinciasId] int  NOT NULL,
    [CodigoPostal] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ActividadesEconomicasSet'
CREATE TABLE [dbo].[ActividadesEconomicasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TareasSet'
CREATE TABLE [dbo].[TareasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Categoria] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ServicioSet'
CREATE TABLE [dbo].[ServicioSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [precio] float  NOT NULL,
    [activo] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ClientesSet'
ALTER TABLE [dbo].[ClientesSet]
ADD CONSTRAINT [PK_ClientesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EstablecimientosSet'
ALTER TABLE [dbo].[EstablecimientosSet]
ADD CONSTRAINT [PK_EstablecimientosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ContactoSet'
ALTER TABLE [dbo].[ContactoSet]
ADD CONSTRAINT [PK_ContactoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PresupuestoSet'
ALTER TABLE [dbo].[PresupuestoSet]
ADD CONSTRAINT [PK_PresupuestoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'DetallePresupuestoSet'
ALTER TABLE [dbo].[DetallePresupuestoSet]
ADD CONSTRAINT [PK_DetallePresupuestoSet]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Legajo] in table 'TécnicosSet'
ALTER TABLE [dbo].[TécnicosSet]
ADD CONSTRAINT [PK_TécnicosSet]
    PRIMARY KEY CLUSTERED ([Legajo] ASC);
GO

-- Creating primary key on [Id] in table 'AgendaSet'
ALTER TABLE [dbo].[AgendaSet]
ADD CONSTRAINT [PK_AgendaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PuestosSet'
ALTER TABLE [dbo].[PuestosSet]
ADD CONSTRAINT [PK_PuestosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TrabajadoresSet'
ALTER TABLE [dbo].[TrabajadoresSet]
ADD CONSTRAINT [PK_TrabajadoresSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MáquinasSet'
ALTER TABLE [dbo].[MáquinasSet]
ADD CONSTRAINT [PK_MáquinasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RiesgosSet'
ALTER TABLE [dbo].[RiesgosSet]
ADD CONSTRAINT [PK_RiesgosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoRiesgosSet'
ALTER TABLE [dbo].[TipoRiesgosSet]
ADD CONSTRAINT [PK_TipoRiesgosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AccidentesSet'
ALTER TABLE [dbo].[AccidentesSet]
ADD CONSTRAINT [PK_AccidentesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MedidasPreventivasSet'
ALTER TABLE [dbo].[MedidasPreventivasSet]
ADD CONSTRAINT [PK_MedidasPreventivasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OrdenTrabajoSet'
ALTER TABLE [dbo].[OrdenTrabajoSet]
ADD CONSTRAINT [PK_OrdenTrabajoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PlanesFormacionSet'
ALTER TABLE [dbo].[PlanesFormacionSet]
ADD CONSTRAINT [PK_PlanesFormacionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetallePlanesFormacionSet'
ALTER TABLE [dbo].[DetallePlanesFormacionSet]
ADD CONSTRAINT [PK_DetallePlanesFormacionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CursosSet'
ALTER TABLE [dbo].[CursosSet]
ADD CONSTRAINT [PK_CursosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CondicionIvaSet'
ALTER TABLE [dbo].[CondicionIvaSet]
ADD CONSTRAINT [PK_CondicionIvaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProvinciasSet'
ALTER TABLE [dbo].[ProvinciasSet]
ADD CONSTRAINT [PK_ProvinciasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LocalidadesSet'
ALTER TABLE [dbo].[LocalidadesSet]
ADD CONSTRAINT [PK_LocalidadesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ActividadesEconomicasSet'
ALTER TABLE [dbo].[ActividadesEconomicasSet]
ADD CONSTRAINT [PK_ActividadesEconomicasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TareasSet'
ALTER TABLE [dbo].[TareasSet]
ADD CONSTRAINT [PK_TareasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ServicioSet'
ALTER TABLE [dbo].[ServicioSet]
ADD CONSTRAINT [PK_ServicioSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ClientesId] in table 'EstablecimientosSet'
ALTER TABLE [dbo].[EstablecimientosSet]
ADD CONSTRAINT [FK_EstablecimientosClientes]
    FOREIGN KEY ([ClientesId])
    REFERENCES [dbo].[ClientesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstablecimientosClientes'
CREATE INDEX [IX_FK_EstablecimientosClientes]
ON [dbo].[EstablecimientosSet]
    ([ClientesId]);
GO

-- Creating foreign key on [CondicionIvaId] in table 'ClientesSet'
ALTER TABLE [dbo].[ClientesSet]
ADD CONSTRAINT [FK_ClientesCondicionIva]
    FOREIGN KEY ([CondicionIvaId])
    REFERENCES [dbo].[CondicionIvaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientesCondicionIva'
CREATE INDEX [IX_FK_ClientesCondicionIva]
ON [dbo].[ClientesSet]
    ([CondicionIvaId]);
GO

-- Creating foreign key on [LocalidadesId] in table 'ClientesSet'
ALTER TABLE [dbo].[ClientesSet]
ADD CONSTRAINT [FK_ClientesLocalidades]
    FOREIGN KEY ([LocalidadesId])
    REFERENCES [dbo].[LocalidadesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientesLocalidades'
CREATE INDEX [IX_FK_ClientesLocalidades]
ON [dbo].[ClientesSet]
    ([LocalidadesId]);
GO

-- Creating foreign key on [LocalidadesId] in table 'ContactoSet'
ALTER TABLE [dbo].[ContactoSet]
ADD CONSTRAINT [FK_ContactoLocalidades]
    FOREIGN KEY ([LocalidadesId])
    REFERENCES [dbo].[LocalidadesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactoLocalidades'
CREATE INDEX [IX_FK_ContactoLocalidades]
ON [dbo].[ContactoSet]
    ([LocalidadesId]);
GO

-- Creating foreign key on [ProvinciasId] in table 'LocalidadesSet'
ALTER TABLE [dbo].[LocalidadesSet]
ADD CONSTRAINT [FK_LocalidadesProvincias]
    FOREIGN KEY ([ProvinciasId])
    REFERENCES [dbo].[ProvinciasSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocalidadesProvincias'
CREATE INDEX [IX_FK_LocalidadesProvincias]
ON [dbo].[LocalidadesSet]
    ([ProvinciasId]);
GO

-- Creating foreign key on [LocalidadesId] in table 'EstablecimientosSet'
ALTER TABLE [dbo].[EstablecimientosSet]
ADD CONSTRAINT [FK_EstablecimientosLocalidades]
    FOREIGN KEY ([LocalidadesId])
    REFERENCES [dbo].[LocalidadesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstablecimientosLocalidades'
CREATE INDEX [IX_FK_EstablecimientosLocalidades]
ON [dbo].[EstablecimientosSet]
    ([LocalidadesId]);
GO

-- Creating foreign key on [ActividadesEconomicasId] in table 'EstablecimientosSet'
ALTER TABLE [dbo].[EstablecimientosSet]
ADD CONSTRAINT [FK_EstablecimientosActividadesEconomicas]
    FOREIGN KEY ([ActividadesEconomicasId])
    REFERENCES [dbo].[ActividadesEconomicasSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstablecimientosActividadesEconomicas'
CREATE INDEX [IX_FK_EstablecimientosActividadesEconomicas]
ON [dbo].[EstablecimientosSet]
    ([ActividadesEconomicasId]);
GO

-- Creating foreign key on [LocalidadesId] in table 'TécnicosSet'
ALTER TABLE [dbo].[TécnicosSet]
ADD CONSTRAINT [FK_TécnicosLocalidades]
    FOREIGN KEY ([LocalidadesId])
    REFERENCES [dbo].[LocalidadesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TécnicosLocalidades'
CREATE INDEX [IX_FK_TécnicosLocalidades]
ON [dbo].[TécnicosSet]
    ([LocalidadesId]);
GO

-- Creating foreign key on [PuestosId] in table 'OrdenTrabajoSet'
ALTER TABLE [dbo].[OrdenTrabajoSet]
ADD CONSTRAINT [FK_OrdenTrabajoPuestos]
    FOREIGN KEY ([PuestosId])
    REFERENCES [dbo].[PuestosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdenTrabajoPuestos'
CREATE INDEX [IX_FK_OrdenTrabajoPuestos]
ON [dbo].[OrdenTrabajoSet]
    ([PuestosId]);
GO

-- Creating foreign key on [TrabajadoresId] in table 'OrdenTrabajoSet'
ALTER TABLE [dbo].[OrdenTrabajoSet]
ADD CONSTRAINT [FK_OrdenTrabajoTrabajadores]
    FOREIGN KEY ([TrabajadoresId])
    REFERENCES [dbo].[TrabajadoresSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdenTrabajoTrabajadores'
CREATE INDEX [IX_FK_OrdenTrabajoTrabajadores]
ON [dbo].[OrdenTrabajoSet]
    ([TrabajadoresId]);
GO

-- Creating foreign key on [MáquinasId] in table 'OrdenTrabajoSet'
ALTER TABLE [dbo].[OrdenTrabajoSet]
ADD CONSTRAINT [FK_OrdenTrabajoMáquinas]
    FOREIGN KEY ([MáquinasId])
    REFERENCES [dbo].[MáquinasSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdenTrabajoMáquinas'
CREATE INDEX [IX_FK_OrdenTrabajoMáquinas]
ON [dbo].[OrdenTrabajoSet]
    ([MáquinasId]);
GO

-- Creating foreign key on [RiesgosId] in table 'OrdenTrabajoSet'
ALTER TABLE [dbo].[OrdenTrabajoSet]
ADD CONSTRAINT [FK_OrdenTrabajoRiesgos]
    FOREIGN KEY ([RiesgosId])
    REFERENCES [dbo].[RiesgosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdenTrabajoRiesgos'
CREATE INDEX [IX_FK_OrdenTrabajoRiesgos]
ON [dbo].[OrdenTrabajoSet]
    ([RiesgosId]);
GO

-- Creating foreign key on [TipoRiesgosId] in table 'RiesgosSet'
ALTER TABLE [dbo].[RiesgosSet]
ADD CONSTRAINT [FK_RiesgosTipoRiesgos]
    FOREIGN KEY ([TipoRiesgosId])
    REFERENCES [dbo].[TipoRiesgosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RiesgosTipoRiesgos'
CREATE INDEX [IX_FK_RiesgosTipoRiesgos]
ON [dbo].[RiesgosSet]
    ([TipoRiesgosId]);
GO

-- Creating foreign key on [MedidasPreventivasId] in table 'OrdenTrabajoSet'
ALTER TABLE [dbo].[OrdenTrabajoSet]
ADD CONSTRAINT [FK_OrdenTrabajoMedidasPreventivas]
    FOREIGN KEY ([MedidasPreventivasId])
    REFERENCES [dbo].[MedidasPreventivasSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdenTrabajoMedidasPreventivas'
CREATE INDEX [IX_FK_OrdenTrabajoMedidasPreventivas]
ON [dbo].[OrdenTrabajoSet]
    ([MedidasPreventivasId]);
GO

-- Creating foreign key on [TécnicosLegajo] in table 'AgendaSet'
ALTER TABLE [dbo].[AgendaSet]
ADD CONSTRAINT [FK_AgendaTécnicos]
    FOREIGN KEY ([TécnicosLegajo])
    REFERENCES [dbo].[TécnicosSet]
        ([Legajo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AgendaTécnicos'
CREATE INDEX [IX_FK_AgendaTécnicos]
ON [dbo].[AgendaSet]
    ([TécnicosLegajo]);
GO

-- Creating foreign key on [OrdenTrabajoId] in table 'AgendaSet'
ALTER TABLE [dbo].[AgendaSet]
ADD CONSTRAINT [FK_AgendaOrdenTrabajo]
    FOREIGN KEY ([OrdenTrabajoId])
    REFERENCES [dbo].[OrdenTrabajoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AgendaOrdenTrabajo'
CREATE INDEX [IX_FK_AgendaOrdenTrabajo]
ON [dbo].[AgendaSet]
    ([OrdenTrabajoId]);
GO

-- Creating foreign key on [EstablecimientosId] in table 'AgendaSet'
ALTER TABLE [dbo].[AgendaSet]
ADD CONSTRAINT [FK_AgendaEstablecimientos]
    FOREIGN KEY ([EstablecimientosId])
    REFERENCES [dbo].[EstablecimientosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AgendaEstablecimientos'
CREATE INDEX [IX_FK_AgendaEstablecimientos]
ON [dbo].[AgendaSet]
    ([EstablecimientosId]);
GO

-- Creating foreign key on [ClientesId] in table 'PresupuestoSet'
ALTER TABLE [dbo].[PresupuestoSet]
ADD CONSTRAINT [FK_PresupuestoClientes]
    FOREIGN KEY ([ClientesId])
    REFERENCES [dbo].[ClientesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PresupuestoClientes'
CREATE INDEX [IX_FK_PresupuestoClientes]
ON [dbo].[PresupuestoSet]
    ([ClientesId]);
GO

-- Creating foreign key on [PuestosId] in table 'AccidentesSet'
ALTER TABLE [dbo].[AccidentesSet]
ADD CONSTRAINT [FK_AccidentesPuestos]
    FOREIGN KEY ([PuestosId])
    REFERENCES [dbo].[PuestosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccidentesPuestos'
CREATE INDEX [IX_FK_AccidentesPuestos]
ON [dbo].[AccidentesSet]
    ([PuestosId]);
GO

-- Creating foreign key on [TrabajadoresId] in table 'AccidentesSet'
ALTER TABLE [dbo].[AccidentesSet]
ADD CONSTRAINT [FK_AccidentesTrabajadores]
    FOREIGN KEY ([TrabajadoresId])
    REFERENCES [dbo].[TrabajadoresSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccidentesTrabajadores'
CREATE INDEX [IX_FK_AccidentesTrabajadores]
ON [dbo].[AccidentesSet]
    ([TrabajadoresId]);
GO

-- Creating foreign key on [CursosId] in table 'PlanesFormacionSet'
ALTER TABLE [dbo].[PlanesFormacionSet]
ADD CONSTRAINT [FK_PlanesFormacionCursos]
    FOREIGN KEY ([CursosId])
    REFERENCES [dbo].[CursosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanesFormacionCursos'
CREATE INDEX [IX_FK_PlanesFormacionCursos]
ON [dbo].[PlanesFormacionSet]
    ([CursosId]);
GO

-- Creating foreign key on [TrabajadoresId] in table 'PlanesFormacionSet'
ALTER TABLE [dbo].[PlanesFormacionSet]
ADD CONSTRAINT [FK_PlanesFormacionTrabajadores]
    FOREIGN KEY ([TrabajadoresId])
    REFERENCES [dbo].[TrabajadoresSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanesFormacionTrabajadores'
CREATE INDEX [IX_FK_PlanesFormacionTrabajadores]
ON [dbo].[PlanesFormacionSet]
    ([TrabajadoresId]);
GO

-- Creating foreign key on [ServicioId] in table 'DetallePresupuestoSet'
ALTER TABLE [dbo].[DetallePresupuestoSet]
ADD CONSTRAINT [FK_DetallePresupuestoServicio]
    FOREIGN KEY ([ServicioId])
    REFERENCES [dbo].[ServicioSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DetallePresupuestoServicio'
CREATE INDEX [IX_FK_DetallePresupuestoServicio]
ON [dbo].[DetallePresupuestoSet]
    ([ServicioId]);
GO

-- Creating foreign key on [PresupuestoId] in table 'DetallePresupuestoSet'
ALTER TABLE [dbo].[DetallePresupuestoSet]
ADD CONSTRAINT [FK_PresupuestoDetallePresupuesto]
    FOREIGN KEY ([PresupuestoId])
    REFERENCES [dbo].[PresupuestoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PresupuestoDetallePresupuesto'
CREATE INDEX [IX_FK_PresupuestoDetallePresupuesto]
ON [dbo].[DetallePresupuestoSet]
    ([PresupuestoId]);
GO

-- Creating foreign key on [ClientesId] in table 'ContactoSet'
ALTER TABLE [dbo].[ContactoSet]
ADD CONSTRAINT [FK_ClientesContacto]
    FOREIGN KEY ([ClientesId])
    REFERENCES [dbo].[ClientesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientesContacto'
CREATE INDEX [IX_FK_ClientesContacto]
ON [dbo].[ContactoSet]
    ([ClientesId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------