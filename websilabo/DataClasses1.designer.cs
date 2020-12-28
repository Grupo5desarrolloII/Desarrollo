﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace websilabo
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="websilabo")]
	public partial class DataClasses1DataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void Insertsolicitud(solicitud instance);
    partial void Updatesolicitud(solicitud instance);
    partial void Deletesolicitud(solicitud instance);
    #endregion
		
		public DataClasses1DataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["websilaboConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<solicitud> solicituds
		{
			get
			{
				return this.GetTable<solicitud>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.solicitud")]
	public partial class solicitud : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _idSolicitud;
		
		private string _asunto;
		
		private string _estado;
		
		private string _codigoRemitente;
		
		private string _nombreDoc;
		
		private string _documento;
		
		private string _FechaRegistro;
		
		private string _TipoSolicitud;
		
		private string _AreaDestino;
		
		private System.Nullable<int> _idUsuario;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidSolicitudChanging(int value);
    partial void OnidSolicitudChanged();
    partial void OnasuntoChanging(string value);
    partial void OnasuntoChanged();
    partial void OnestadoChanging(string value);
    partial void OnestadoChanged();
    partial void OncodigoRemitenteChanging(string value);
    partial void OncodigoRemitenteChanged();
    partial void OnnombreDocChanging(string value);
    partial void OnnombreDocChanged();
    partial void OndocumentoChanging(string value);
    partial void OndocumentoChanged();
    partial void OnFechaRegistroChanging(string value);
    partial void OnFechaRegistroChanged();
    partial void OnTipoSolicitudChanging(string value);
    partial void OnTipoSolicitudChanged();
    partial void OnAreaDestinoChanging(string value);
    partial void OnAreaDestinoChanged();
    partial void OnidUsuarioChanging(System.Nullable<int> value);
    partial void OnidUsuarioChanged();
    #endregion
		
		public solicitud()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_idSolicitud", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int idSolicitud
		{
			get
			{
				return this._idSolicitud;
			}
			set
			{
				if ((this._idSolicitud != value))
				{
					this.OnidSolicitudChanging(value);
					this.SendPropertyChanging();
					this._idSolicitud = value;
					this.SendPropertyChanged("idSolicitud");
					this.OnidSolicitudChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_asunto", DbType="VarChar(50)")]
		public string asunto
		{
			get
			{
				return this._asunto;
			}
			set
			{
				if ((this._asunto != value))
				{
					this.OnasuntoChanging(value);
					this.SendPropertyChanging();
					this._asunto = value;
					this.SendPropertyChanged("asunto");
					this.OnasuntoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_estado", DbType="VarChar(50)")]
		public string estado
		{
			get
			{
				return this._estado;
			}
			set
			{
				if ((this._estado != value))
				{
					this.OnestadoChanging(value);
					this.SendPropertyChanging();
					this._estado = value;
					this.SendPropertyChanged("estado");
					this.OnestadoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_codigoRemitente", DbType="VarChar(20)")]
		public string codigoRemitente
		{
			get
			{
				return this._codigoRemitente;
			}
			set
			{
				if ((this._codigoRemitente != value))
				{
					this.OncodigoRemitenteChanging(value);
					this.SendPropertyChanging();
					this._codigoRemitente = value;
					this.SendPropertyChanged("codigoRemitente");
					this.OncodigoRemitenteChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nombreDoc", DbType="VarChar(50)")]
		public string nombreDoc
		{
			get
			{
				return this._nombreDoc;
			}
			set
			{
				if ((this._nombreDoc != value))
				{
					this.OnnombreDocChanging(value);
					this.SendPropertyChanging();
					this._nombreDoc = value;
					this.SendPropertyChanged("nombreDoc");
					this.OnnombreDocChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_documento", DbType="VarChar(200)")]
		public string documento
		{
			get
			{
				return this._documento;
			}
			set
			{
				if ((this._documento != value))
				{
					this.OndocumentoChanging(value);
					this.SendPropertyChanging();
					this._documento = value;
					this.SendPropertyChanged("documento");
					this.OndocumentoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FechaRegistro", DbType="VarChar(20)")]
		public string FechaRegistro
		{
			get
			{
				return this._FechaRegistro;
			}
			set
			{
				if ((this._FechaRegistro != value))
				{
					this.OnFechaRegistroChanging(value);
					this.SendPropertyChanging();
					this._FechaRegistro = value;
					this.SendPropertyChanged("FechaRegistro");
					this.OnFechaRegistroChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TipoSolicitud", DbType="VarChar(25)")]
		public string TipoSolicitud
		{
			get
			{
				return this._TipoSolicitud;
			}
			set
			{
				if ((this._TipoSolicitud != value))
				{
					this.OnTipoSolicitudChanging(value);
					this.SendPropertyChanging();
					this._TipoSolicitud = value;
					this.SendPropertyChanged("TipoSolicitud");
					this.OnTipoSolicitudChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AreaDestino", DbType="VarChar(25)")]
		public string AreaDestino
		{
			get
			{
				return this._AreaDestino;
			}
			set
			{
				if ((this._AreaDestino != value))
				{
					this.OnAreaDestinoChanging(value);
					this.SendPropertyChanging();
					this._AreaDestino = value;
					this.SendPropertyChanged("AreaDestino");
					this.OnAreaDestinoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_idUsuario", DbType="Int")]
		public System.Nullable<int> idUsuario
		{
			get
			{
				return this._idUsuario;
			}
			set
			{
				if ((this._idUsuario != value))
				{
					this.OnidUsuarioChanging(value);
					this.SendPropertyChanging();
					this._idUsuario = value;
					this.SendPropertyChanged("idUsuario");
					this.OnidUsuarioChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
