/* Inventory.vapi generated by valac.exe 0.24.0, do not modify. */

namespace Woocommerce {
	namespace Invoice {
		[CCode (cheader_filename = "Inventory.h")]
		public class TicketInvoice : GLib.Object {
			protected string body;
			protected Cairo.Context ctx;
			protected double fontSize;
			protected int height;
			protected int innerWidth;
			protected int padding;
			protected int pageMargin;
			protected int width;
			public TicketInvoice ();
			public void AddLine (string text, string align = "left");
			public void Draw ();
			public Cairo.Context GetContext ();
			public float Mm2Pixel (float _mm);
			public float Pixel2Mm (float _pix);
			public void SetContext (Cairo.Context ctx);
			public void SetHeight (int height);
			public void SetWidth (int width);
			public string TextCenter (string par1);
			protected string TextLeft (string _str);
			public string TextRight (string par1);
			public void buildPageFrame ();
			public TicketInvoice.with_context (Cairo.Context ctx);
		}
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class InventoryHelper : GLib.Object {
		public InventoryHelper ();
		public static bool DeleteStore (int store_id);
		public static Gee.ArrayList<Woocommerce.SBLCategory> GetCategories (int store_id, uint parent_id = 0);
		public static Gee.ArrayList<EPos.EProduct> GetCategoryProducts (int cat_id, int page, int rows_per_page, out long total_records);
		public static Gee.ArrayList<Gee.HashMap<string,GLib.Value?>> GetDepartments ();
		public static Gee.ArrayList<EPos.EProduct> GetProducts (int page, int rows_per_page, out long total_records);
		public static Gee.ArrayList<Woocommerce.PurchaseOrder> GetPurchaseOrders (int store_id, int page, int rows_per_page, out int total_rows);
		public static Gee.ArrayList<EPos.EProduct> GetStoreProducts (int store_id, int page, int rows_per_page, out long total_records);
		public static Gee.ArrayList<SinticBolivia.SBStore> GetStores ();
		public static Gee.ArrayList<EPos.ESupplier> GetSuppliers ();
		public static Gee.ArrayList<SinticBolivia.SBTransaction> GetTransactions (int store_id, int type_id, int page, int rows_per_page, out int total_rows);
		public static Gee.HashMap<string,GLib.Value?>? GetUnitOfMeasure (int id);
		public static Gee.ArrayList<Gee.HashMap<string,GLib.Value?>> GetUnitOfMeasures ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class Order : GLib.Object {
		public SinticBolivia.SBUser User;
		protected SinticBolivia.Database.SBDBRow dbData;
		protected Gee.ArrayList<SinticBolivia.Database.SBDBRow> items;
		public Order ();
		public void GetDbData (int order_id);
		public void GetDbItems (int order_id);
		public void SetDbData (SinticBolivia.Database.SBDBRow row);
		public Order.from_id (int order_id);
		public string Code { get; }
		public string CreationDate { get; }
		public string DeliveryDate { get; }
		public string Details { get; }
		public double Discount { get; }
		public int Id { get; }
		public Gee.ArrayList<SinticBolivia.Database.SBDBRow> Items { get; }
		public string LastModificationDate { get; }
		public int NumItems { get; }
		public string OrderDate { get; }
		public string Status { get; }
		public int StoreId { get; }
		public double SubTotal { get; }
		public int SupplierId { get; }
		public double TaxTotal { get; }
		public double Total { get; }
		public int UserId { get; }
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class PurchaseOrder : Woocommerce.Order {
		public PurchaseOrder ();
		public PurchaseOrder.from_id (int order_id);
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class SB_ModuleInventory : SinticBolivia.Gtk.SBGtkModule, SinticBolivia.ISBModule {
		public SB_ModuleInventory ();
		protected void ApplyPatches ();
		public static void hook_reports_menu (SinticBolivia.SBModuleArgs<Gtk.Menu> args);
		public static void init_menu_management (SinticBolivia.SBModuleArgs<Gtk.Menu> args);
		public static void sidebar_init (SinticBolivia.SBModuleArgs<Gee.HashMap> harg);
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class Sale : GLib.Object {
		protected SinticBolivia.Database.SBDBRow dbData;
		public Sale ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetCurrencies : Gtk.Box {
		protected Gtk.Box boxCurrencies;
		protected Gtk.Button buttonAdd;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonDelete;
		protected Gtk.Button buttonEdit;
		protected Gtk.Button buttonSave;
		protected int currencyId;
		protected Gtk.Dialog dlg;
		protected Gtk.Entry entryCode;
		protected Gtk.Entry entryName;
		protected Gtk.Entry entryRate;
		protected Gtk.Image image1;
		protected Gtk.ScrolledWindow scrolledwindow1;
		protected SinticBolivia.Gtk.DbTableTreeView treeview;
		protected Gtk.Builder ui;
		public WidgetCurrencies ();
		protected void Build ();
		protected void OnButtonAddClicked ();
		protected void OnButtonCancelClicked ();
		protected void OnButtonDeleteClicked ();
		protected void OnButtonEditClicked ();
		protected void OnButtonSaveClicked ();
		protected void Refresh ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetIventory : Gtk.Box {
		protected int _category_id;
		protected int _product_id;
		protected int _store_id;
		protected Gtk.Box boxProducts;
		protected Gtk.Box boxStore;
		protected Gtk.Button buttonAddStore;
		protected Gtk.Button buttonCancelCategory;
		protected Gtk.Button buttonCancelStore;
		protected Gtk.Button buttonDeleteCategory;
		protected Gtk.Button buttonDeleteProduct;
		protected Gtk.Button buttonDeleteStore;
		protected Gtk.Button buttonEditCategory;
		protected Gtk.Button buttonEditProduct;
		protected Gtk.Button buttonEditStore;
		protected Gtk.Button buttonFirst;
		protected Gtk.Button buttonLast;
		protected Gtk.Button buttonNewCategory;
		protected Gtk.Button buttonNewProduct;
		protected Gtk.Button buttonNext;
		protected Gtk.Button buttonPrev;
		protected Gtk.Button buttonRefreshProducts;
		protected Gtk.Button buttonSaveCategory;
		protected Gtk.Button buttonSaveStore;
		protected Gtk.ButtonBox buttonboxProducts;
		protected Gtk.ComboBox comboboxCategoriesStore;
		protected Gtk.ComboBox comboboxCategory;
		protected Gtk.ComboBox comboboxCategoryStore;
		protected Gtk.ComboBox comboboxParentCategory;
		protected Gtk.ComboBox comboboxProductSearchBy;
		protected Gtk.ComboBox comboboxPurchaseDocument;
		protected Gtk.ComboBox comboboxRefundDocument;
		protected Gtk.ComboBox comboboxSalesDocument;
		protected Gtk.ComboBox comboboxStore;
		protected Gtk.ComboBox comboboxTax;
		protected Gtk.Entry entryCategoryName;
		protected Gtk.Entry entrySearchProduct;
		protected Gtk.Entry entrySearchStore;
		protected Gtk.Entry entryStoreAddress;
		protected Gtk.Entry entryStoreName;
		protected Gtk.Image imageCategories;
		protected Gtk.Image imageProducts;
		protected Gtk.Image imageStores;
		protected Gtk.Label labelStoresTitle;
		protected Gtk.Label labelTotalProducts;
		protected Gtk.Label labelViewProducts;
		protected Gtk.Label labelViewTotal;
		protected Gtk.Paned panedBranches;
		protected Gtk.Paned panedCategories;
		protected Gtk.TextView textviewCategoryDescription;
		protected Gtk.TreeView treeviewCategories;
		protected Gtk.TreeView treeviewProducts;
		protected Gtk.TreeView treeviewStores;
		protected Gtk.Builder ui;
		protected Gtk.Window windowProducts;
		public WidgetIventory ();
		protected void BuildCategories ();
		protected void BuildProducts ();
		protected void BuildStores ();
		protected void OnButtonAddStoreClicked ();
		protected void OnButtonCancelStoreClicked ();
		protected void OnButtonDeleteCategoryClicked ();
		protected void OnButtonDeleteStoreClicked ();
		protected void OnButtonEditCategoryClicked ();
		protected void OnButtonEditProductClicked ();
		protected void OnButtonEditStoreClicked ();
		protected void OnButtonNewCategoryClicked ();
		protected void OnButtonNewProductClicked ();
		protected void OnButtonRefreshProductsClicked ();
		protected void OnButtonSaveCategoryClicked ();
		protected void OnButtonSaveStoreClicked ();
		protected void OnComboBoxCategoriesStoreChanged ();
		protected void OnComboboxCategoryChanged ();
		protected void OnComboboxStoreChanged ();
		protected void OnPrintCatalogActivated ();
		protected void OnPrintLabelsActivated ();
		protected void RefreshCategories (int store_id = 0);
		protected void RefreshProducts (int store_id = -1, int category_id = -1);
		protected void RefreshStores ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetNewSupplier : Gtk.Box {
		protected Gtk.Box boxSupplier;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonSave;
		protected Gtk.ComboBox comboboxCountry;
		protected Gtk.Entry entryCity;
		protected Gtk.Entry entryCompany;
		protected Gtk.Entry entryContactFirstName;
		protected Gtk.Entry entryDefaultMarkup;
		protected Gtk.Entry entryEmail;
		protected Gtk.Entry entryMobile;
		protected Gtk.Entry entryPhone;
		protected Gtk.Entry entryStreet;
		protected Gtk.Entry entrySupplierName;
		protected Gtk.Entry entryWebsite;
		protected Gtk.Image image1;
		protected Gtk.Label labelDetailsTitle;
		protected int supplierId;
		protected Gtk.TextView textviewDescription;
		protected Gtk.Builder ui;
		protected Gtk.Viewport viewportDetailsBody;
		public WidgetNewSupplier ();
		protected void Build ();
		protected void FillForm ();
		protected void OnButtonCancelClicked ();
		protected void OnButtonSaveClicked ();
		protected void SetEvents ();
		public void SetSupplier (int supplier_id);
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetProductDepartments : Gtk.Box {
		protected Gtk.Box boxDepartments;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonDelete;
		protected Gtk.Button buttonEdit;
		protected Gtk.Button buttonNew;
		protected Gtk.Button buttonSave;
		protected int depId;
		protected Gtk.Dialog dlg;
		protected Gtk.Entry entryDescription;
		protected Gtk.Entry entryName;
		protected Gtk.Image image1;
		protected Gtk.ScrolledWindow scrolledwindow1;
		protected SinticBolivia.Gtk.DbTableTreeView treeview;
		protected Gtk.Builder ui;
		public WidgetProductDepartments ();
		protected void Build ();
		protected void OnButtonCancelClicked ();
		protected void OnButtonDeleteClicked ();
		protected void OnButtonEditClicked ();
		protected void OnButtonNewClicked ();
		protected void OnButtonSaveClicked ();
		protected void Refresh ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetProductLines : Gtk.Box {
		protected Gtk.Box box1;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonDelete;
		protected Gtk.Button buttonEdit;
		protected Gtk.Button buttonNew;
		protected Gtk.Button buttonSave;
		protected Gtk.Dialog dlg;
		protected Gtk.Entry entryDescription;
		protected Gtk.Entry entryName;
		protected Gtk.Image image1;
		protected int lineId;
		protected Gtk.ScrolledWindow scrolledwindow1;
		protected SinticBolivia.Gtk.DbTableTreeView tv;
		protected Gtk.Builder ui;
		public WidgetProductLines ();
		protected void Build ();
		protected void OnButtonCancelClicked ();
		protected void OnButtonDeleteClicked ();
		protected void OnButtonEditClicked ();
		protected void OnButtonNewClicked ();
		protected void OnButtonSaveClicked ();
		protected void Refresh ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetPurchaseOrder : Gtk.Box {
		protected enum Columns {
			COUNT,
			PRODUCT_NAME,
			CURRENT_QTY,
			QTY,
			COST,
			SUB_TOTAL,
			TAX,
			TOTAL,
			IMAGE,
			PRODUCT_ID,
			TAX_RATE,
			N
		}
		protected Gtk.Box boxPurchaseOrder;
		protected Gtk.Button buttonAddProduct;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonSave;
		protected Gtk.ButtonBox buttonbox1;
		protected Gtk.ComboBox comboboxSearchType;
		protected Gtk.ComboBox comboboxStores;
		protected Gtk.ComboBox comboboxSuppliers;
		protected SinticBolivia.Gtk.SBDatePicker datepickerDeliveryDate;
		protected SinticBolivia.Gtk.SBDatePicker datepickerOrderDate;
		protected Gtk.Entry entryDetails;
		protected Gtk.Entry entrySearchProduct;
		protected Gtk.Image image1;
		protected Gtk.Label labelSubTotal;
		protected Gtk.Label labelTitle;
		protected Gtk.Label labelTotal;
		protected Gtk.Label labelTotalTax;
		protected Woocommerce.PurchaseOrder order;
		protected Gtk.SpinButton spinbuttonProductQty;
		protected int total_items;
		protected Gtk.TreeView treeviewProducts;
		protected Gtk.Builder ui;
		public WidgetPurchaseOrder ();
		protected void Build ();
		protected void FillForm ();
		protected void OnButtonAddProductClicked ();
		protected void OnButtonCancelClicked ();
		protected void OnButtonReceiveClicked ();
		protected void OnButtonSaveClicked ();
		protected bool OnCompletionMatchSelected (Gtk.TreeModel model, Gtk.TreeIter iter);
		protected bool OnEntrySearchProductKeyReleaseEvent (Gdk.EventKey event);
		protected bool OnTreeViewProductsButtonReleaseEvent (Gdk.EventButton args);
		protected void SetEvents ();
		public void SetOrder (Woocommerce.PurchaseOrder order);
		protected void calculateRowTotal (Gtk.TreeIter iter);
		protected void calculateTotals ();
		protected bool isProductInOrder (int product_id, out Gtk.TreeIter o_iter);
		public string Title { set; }
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetPurchaseOrders : Gtk.Box {
		protected enum Columns {
			COUNT,
			STORE,
			ITEMS,
			TOTAL,
			DELIVERY_DATE,
			STATUS,
			CREATION_DATE,
			ORDER_ID,
			N_COLS
		}
		protected Gtk.Box boxPurchaseOrders;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonEdit;
		protected Gtk.Button buttonNew;
		protected Gtk.Button buttonPreview;
		protected Gtk.Button buttonPrint;
		protected Gtk.Button buttonReceive;
		protected Gtk.ComboBox comboboxStatus;
		protected Gtk.ComboBox comboboxStores;
		protected Gtk.Image image1;
		protected Gtk.Label labelTitle;
		protected Gtk.TreeView treeviewOrders;
		protected Gtk.Builder ui;
		public WidgetPurchaseOrders ();
		protected void Build ();
		protected void FillForm ();
		protected void GetOrders (int store_id, string? status = null, int page = 1, int limit = 100);
		protected void OnButtonCancelClicked ();
		protected void OnButtonEditClicked ();
		protected void OnButtonNewClicked ();
		protected void OnButtonPreviewClicked ();
		protected void OnButtonReceiveClicked ();
		protected void OnComboBoxStatusChanged ();
		protected void OnComboBoxStoresChanged ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetSuppliers : Gtk.Box {
		protected enum Columns {
			COUNT,
			SUPPLIER_NAME,
			COMPANY,
			CITY,
			MARKUP,
			SUPPLIER_ID,
			N_COLS
		}
		protected Gtk.Box boxSuppliers;
		protected Gtk.Button buttonDelete;
		protected Gtk.Button buttonEdit;
		protected Gtk.Button buttonNew;
		protected Gtk.ComboBox comboboxStore;
		protected Gtk.Image image1;
		protected Gtk.Label labelTitle;
		protected Gtk.TreeView treeviewSuppliers;
		protected Gtk.Builder ui;
		public WidgetSuppliers ();
		protected void Build ();
		protected void FillForm ();
		protected void FillSuppliers ();
		protected void OnButtonEditClicked ();
		protected void OnButtonNewClicked ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetTransactionTypes : Gtk.Box {
		protected Gtk.Box boxTransactionTypes;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonDelete;
		protected Gtk.Button buttonEdit;
		protected Gtk.Button buttonNew;
		protected Gtk.Button buttonSave;
		protected Gtk.ComboBox comboboxType;
		protected Gtk.Dialog dlg;
		protected Gtk.Entry entryKey;
		protected Gtk.Entry entryName;
		protected Gtk.Image image1;
		protected Gtk.Label labelTitle;
		protected Gtk.TreeView treeview1;
		protected int ttId;
		protected Gtk.Builder ui;
		public WidgetTransactionTypes ();
		protected void Build ();
		protected void BuildDialog ();
		protected void OnButtonCancelClicked ();
		protected void OnButtonDeleteClicked ();
		protected void OnButtonEditClicked ();
		protected void OnButtonNewClicked ();
		protected void OnButtonSaveClicked ();
		protected void Refresh ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetTransactions : Gtk.Box {
		protected enum Columns {
			CHECKBOX,
			ID,
			STORE,
			TYPE,
			TOTAL,
			NUM_ITEMS,
			STATUS,
			USER_ID,
			DATETIME,
			G_TYPE,
			N_COLS
		}
		protected Gtk.Box boxButtons;
		protected Gtk.Box boxFilters;
		protected Gtk.Box boxTransactions;
		protected Gtk.Button buttonDelete;
		protected Gtk.Button buttonEdit;
		protected Gtk.Button buttonRevert;
		protected Gtk.Button buttonView;
		protected Gtk.ComboBox comboboxStore;
		protected Gtk.ComboBox comboboxTransactionType;
		protected Gtk.Image image1;
		protected SinticBolivia.SBStore store;
		protected Gtk.TreeView treeviewTransactions;
		protected Gtk.Builder ui;
		protected Gtk.Window windowTransactions;
		public WidgetTransactions ();
		protected void Build ();
		protected void FillTransactions (Gee.ArrayList<SinticBolivia.SBTransaction> records);
		protected void OnButtonViewClicked ();
		protected void OnComboBoxStoreChanged ();
		protected void OnComboBoxTransactionTypeChanged ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetUnitOfMeasurement : Gtk.Box {
		protected Gtk.Box boxUm;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonDelete;
		protected Gtk.Button buttonEdit;
		protected Gtk.Button buttonNew;
		protected Gtk.Button buttonSave;
		protected Gtk.Dialog dlg;
		protected Gtk.Entry entryCode;
		protected Gtk.Entry entryName;
		protected Gtk.Entry entryQty;
		protected Gtk.Image image1;
		protected int theId;
		protected Gtk.TreeView treeview1;
		protected Gtk.Builder ui;
		public WidgetUnitOfMeasurement ();
		protected void Build ();
		protected void OnButtonCancelClicked ();
		protected void OnButtonDeleteClicked ();
		protected void OnButtonEditClicked ();
		protected void OnButtonNewClicked ();
		protected void OnButtonSaveClicked ();
		protected void Refresh ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetViewTransaction : Gtk.Box {
		protected enum Columns {
			COUNT,
			ITEM,
			QTY,
			PRICE,
			TOTAL,
			N_COLS
		}
		protected Gtk.Box boxViewTransaction;
		protected Gtk.Button buttonClose;
		protected Gtk.Button buttonPrint;
		protected Gtk.Button buttonRefund;
		protected Gtk.Image image1;
		protected Gtk.Label labelDiscount;
		protected Gtk.Label labelSubtotal;
		protected Gtk.Label labelTitle;
		protected Gtk.Label labelTotal;
		protected GLib.Object transaction;
		protected int transactionId;
		protected Gtk.TreeView treeviewItems;
		protected Gtk.Builder ui;
		public WidgetViewTransaction ();
		protected void Build ();
		protected void OnButtonPrintClicked ();
		protected void SetEvents ();
		public void SetTransaction (GLib.Object t);
	}
}
namespace EPos {
	[CCode (cheader_filename = "Inventory.h")]
	public class Catalog : GLib.Object {
		public float BottomMargin;
		public float[] ColumnsWidth;
		public float FontSize;
		public string FontType;
		public float LeftMargin;
		public float RightMargin;
		public string Title;
		public float TopMargin;
		public float XPos;
		public float YPos;
		public weak HPDF.Font font;
		public weak HPDF.Page page;
		public float pageAvailableSpace;
		protected float pageHeight;
		protected float pageWidth;
		public HPDF.Doc pdf;
		protected float rowHeight;
		protected int totalCols;
		public Catalog ();
		protected bool CheckNewPage (float obj_height);
		public void Draw ();
		public void Preview (string name = "catalog");
		public void Print (string name = "catalog", string printer = "");
		public string Save (string name = "catalog");
		public void SetMargins (float top, float right, float bottom, float left);
		public void WriteText (string text, string align = "left", float font_size = -1, string? color = null);
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class EAssembly : GLib.Object {
		protected Gee.ArrayList<EPos.EAssemblyComponent> components;
		protected SinticBolivia.Database.SBDBRow dbData;
		public EAssembly ();
		public void GetDbComponents ();
		public void GetDbData (int id);
		public EAssembly.from_id (int id);
		public Gee.ArrayList<EPos.EAssemblyComponent> Components { get; }
		public string Description { get; }
		public int Id { get; }
		public string Name { get; }
		public int StoreId { get; }
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class EAssemblyComponent : GLib.Object {
		public EPos.EProduct Product;
		protected SinticBolivia.Database.SBDBRow dbData;
		public EAssemblyComponent ();
		public void GetDbData (int id);
		public void SetDbData (SinticBolivia.Database.SBDBRow data);
		public EAssemblyComponent.from_assembly_id_and_product_id (int assembly_id, int product_id);
		public EAssemblyComponent.from_id (int id);
		public int Id { get; }
		public int ProductId { get; }
		public int QtyRequired { get; }
		public int UOMId { get; }
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class EProduct : GLib.Object {
		public Gee.ArrayList<SinticBolivia.Database.SBDBRow> Attachments;
		protected Gee.ArrayList<Woocommerce.SBLCategory> categories;
		protected Gee.ArrayList<int> categoriesIds;
		protected SinticBolivia.Database.SBDBRow dbData;
		protected Gee.ArrayList<string> images;
		public EProduct ();
		public static long AddMeta (int pid, string meta_key, GLib.Value meta_value);
		public void GetDbData (int id);
		public static string? GetMeta (int pid, string meta_key);
		public string? GetThumbnail ();
		public void SetDbData (owned SinticBolivia.Database.SBDBRow row, bool get_cats = true, bool get_images = true);
		public static bool UpdateMeta (int pid, string meta_key, GLib.Value meta_value);
		public EProduct.from_id (int id);
		protected void getCategories ();
		protected void getImages ();
		public EProduct.with_db_data (owned SinticBolivia.Database.SBDBRow row);
		public int AuthorId { get; }
		public string Barcode { get; }
		public Gee.ArrayList<Woocommerce.SBLCategory> Categories { get; }
		public Gee.ArrayList<int> CategoriesIds { get; }
		public string Code { get; }
		public double Cost { get; }
		public int DepartmentId { get; }
		public string Description { get; }
		public int ExternId { get; }
		public int Id { get; }
		public Gee.ArrayList<string> ImageFiles { get; }
		public string InternalCode { get; }
		public int LineId { get; }
		public int MinStock { get; }
		public string Name { get; }
		public double Price { get; }
		public double Price2 { get; }
		public int Quantity { get; }
		public string SerialNumber { get; }
		public string Status { get; }
		public int StoreId { get; set; }
		public int UnitMeasureId { get; }
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class ESupplier : GLib.Object {
		protected SinticBolivia.Database.SBDBRow dbData;
		public ESupplier ();
		public void GetDbData (int supplier_id);
		public ESupplier.from_id (int supplier_id);
		public ESupplier.with_db_data (SinticBolivia.Database.SBDBRow db_data);
		public string Address { get; }
		public string City { get; }
		public string ContactPerson { get; }
		public string Email { get; }
		public string Fax { get; }
		public int Id { get; }
		public string Key { get; }
		public string Name { get; }
		public int StoreId { get; }
		public string Telephone1 { get; }
		public string Telephone2 { get; }
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class ETaxRate : GLib.Object {
		protected SinticBolivia.Database.SBDBRow dbData;
		public ETaxRate ();
		public ETaxRate.from_id (int id);
		public int Id { get; }
		public string Name { get; }
		public double Rate { get; }
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class PdfCell : GLib.Object {
		public string Align;
		public bool BottomBorder;
		public weak HPDF.Font Font;
		public string FontFamily;
		public float FontSize;
		public float Height;
		public int Index;
		public bool LeftBorder;
		public float Padding;
		public bool RightBorder;
		public EPos.PdfRow Row;
		public float SourceX;
		public float SourceY;
		public int Span;
		public bool TopBorder;
		public float Width;
		protected HPDF.Image image;
		protected Gee.ArrayList<string> lines;
		protected string text;
		public PdfCell ();
		public Gee.ArrayList<string> BuildCellText (float font_size, string text);
		public void Draw ();
		public void SetImage (HPDF.Image image);
		public void SetText (string text);
		public PdfCell.with_row (EPos.PdfRow row);
		public bool Border { set; }
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class PdfRow : GLib.Object {
		public float[] ColumnsWidth;
		public float Height;
		public int NumCells;
		public float SourceX;
		public float SourceY;
		public EPos.PdfTable Table;
		public float Width;
		public float X;
		public float Y;
		protected Gee.ArrayList<EPos.PdfCell> cells;
		public PdfRow ();
		public EPos.PdfCell? AddCell ();
		public void Draw ();
		public void calculateRowSize ();
		public PdfRow.with_table (EPos.PdfTable table);
		public int Size { get; }
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class PdfTable : GLib.Object {
		public float[] ColumnsWidth;
		public weak HPDF.Doc Doc;
		public weak HPDF.Font Font;
		public string[] Headers;
		public float Height;
		public weak HPDF.Page PdfPage;
		public float SourceX;
		public float SourceY;
		public float Width;
		public float X;
		public float Y;
		protected int currentCell;
		protected EPos.PdfRow? currentRow;
		protected Gee.ArrayList<EPos.PdfRow> rows;
		protected int totalCols;
		public PdfTable (HPDF.Doc doc, HPDF.Page page, HPDF.Font font, float width, float source_x, float source_y);
		public EPos.PdfCell? AddCell ();
		public EPos.PdfRow AddRow ();
		public void AddTextCell (string text, string align = "left", float font_size = 12, bool border = true, int span = 1, string? bg = null, string? fg = null);
		public void Draw ();
		public void SetColumnsWidth (float[] widths);
		public void SetTableHeaders (string[] headers);
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetAssemblies : Gtk.Box {
		protected Gtk.Box boxAssemblies;
		protected Gtk.Button buttonAdd;
		protected Gtk.Button buttonDelete;
		protected Gtk.Button buttonEdit;
		protected Gtk.ComboBox comboboxStore;
		protected Gtk.Image image1;
		protected Gtk.TreeView treeviewAssemblies;
		protected Gtk.Builder ui;
		public WidgetAssemblies ();
		protected void Build ();
		protected void OnButtonAddClicked ();
		protected void OnButtonDeleteClicked ();
		protected void OnButtonEditClicked ();
		protected void Refresh ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetItemTypes : Gtk.Box {
		protected Gtk.Box boxItemTypes;
		protected Gtk.Button buttonAdd;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonDelete;
		protected Gtk.Button buttonEdit;
		protected Gtk.Button buttonSave;
		protected Gtk.Dialog dlg;
		protected Gtk.Entry entryCode;
		protected Gtk.Entry entryName;
		protected Gtk.Image image1;
		protected int itemTypeId;
		protected Gtk.ScrolledWindow scrolledwindow1;
		protected SinticBolivia.Gtk.DbTableTreeView treeview;
		protected Gtk.Builder ui;
		public WidgetItemTypes ();
		protected void Build ();
		protected void OnButtonAddClicked ();
		protected void OnButtonCancelClicked ();
		protected void OnButtonDeleteClicked ();
		protected void OnButtonEditClicked ();
		protected void OnButtonSaveClicked ();
		protected void Refresh ();
		protected void SetEvents ();
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WidgetNewProduct : Gtk.Box {
		protected Gtk.Box boxNewProduct;
		protected Gtk.Button buttonAddImage;
		protected Gtk.Button buttonAddSn;
		protected Gtk.Button buttonAddSupplier;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonGenerateCode;
		protected Gtk.Button buttonRemoveSn;
		protected Gtk.Button buttonSave;
		protected Gtk.CheckButton checkbuttonUsesStock;
		protected Gtk.ComboBox comboboxCategories;
		protected Gtk.ComboBox comboboxDepartment;
		protected Gtk.ComboBox comboboxItemType;
		protected Gtk.ComboBox comboboxStatus;
		protected Gtk.ComboBox comboboxStoreBranch;
		protected Gtk.ComboBox comboboxTaxRates;
		protected Gtk.ComboBox comboboxUnitofMeasure;
		protected Gtk.Entry entryBarcode;
		protected Gtk.Entry entryCode;
		protected Gtk.Entry entryCost;
		protected Gtk.Entry entryMinQuantity;
		protected Gtk.Entry entryName;
		protected Gtk.Entry entryPrice;
		protected Gtk.Entry entryPrice2;
		protected Gtk.Entry entryQuantity;
		protected Gtk.Entry entrySearchSupplier;
		protected Gtk.Entry entrySn;
		protected int fixedCol;
		protected Gtk.Fixed fixedImages;
		protected int fixedRow;
		protected int fixedWidth;
		protected int fixedX;
		protected int fixedY;
		protected Gtk.Notebook notebook1;
		protected EPos.EProduct product;
		protected Gtk.ScrolledWindow scrolledwindowSn;
		protected Gtk.TextView textviewDescription;
		protected Gtk.TreeView treeviewSn;
		protected Gtk.TreeView treeviewSuppliers;
		protected Gtk.Builder ui;
		protected Gtk.Viewport viewport1;
		protected Gtk.Window windowNewProduct;
		public WidgetNewProduct ();
		protected void AddSupplier (EPos.ESupplier supplier);
		protected void Build ();
		protected void FillCategories (int store_id);
		protected void OnButtonAddImageClicked ();
		protected void OnButtonAddSnClicked ();
		protected void OnButtonAddSupplierClicked ();
		protected void OnButtonCancelClicked ();
		protected void OnButtonRemoveSnClicked ();
		protected void OnButtonSaveClicked ();
		protected bool OnEntrySearchSupplierKeyReleaseEvent (Gdk.EventKey event);
		protected bool OnSearchSupplierCompletionMatchSelected (Gtk.TreeModel model, Gtk.TreeIter iter);
		protected void SetEvents ();
		protected void addImage (string filename, int id = 0);
		public WidgetNewProduct.with_product (owned EPos.EProduct prod);
	}
	[CCode (cheader_filename = "Inventory.h")]
	public class WindowNewAssembly : Gtk.Window {
		protected int AssemblyId;
		protected Gtk.Box boxNewAssembly;
		protected Gtk.Button buttonAdd;
		protected Gtk.Button buttonCancel;
		protected Gtk.Button buttonSave;
		protected Gtk.ComboBox comboboxUOM;
		protected Gtk.Entry entryName;
		protected Gtk.Entry entryRequiredQty;
		protected Gtk.Entry entrySearchProduct;
		protected Gtk.Image image1;
		protected Gtk.Label labelTitle;
		protected Gtk.TextView textviewDescription;
		protected Gtk.TreeView treeview1;
		protected Gtk.Builder ui;
		public WindowNewAssembly ();
		protected void AddProduct (int product_id, int qty, int uom_id);
		protected void Build ();
		protected void FillForm ();
		protected void OnButtonAddClicked ();
		protected void OnButtonCancelClicked ();
		protected void OnButtonSaveClicked ();
		protected bool OnEntrySearchProductKeyReleaseEvent (Gdk.EventKey event);
		protected bool OnSearchProductMatchCompletion (Gtk.TreeModel model, Gtk.TreeIter iter);
		public void SetAssembly (EPos.EAssembly assembly);
		protected void SetEvents ();
		public int StoreId { get; set; }
	}
}
[CCode (cheader_filename = "Inventory.h")]
public static GLib.Type sb_get_module_type (GLib.Module inventory_module);