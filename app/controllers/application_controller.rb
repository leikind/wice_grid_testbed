class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :init_example_map

  protected

  def init_example_map
    @example_map = [
      ['Basics',
        [
          [:basics1, 'Most simple grid', 'basics'],
          [:basics2, 'Named columns', 'basics'],
          [:upper_pagination_panel, 'Two pagination panels', nil],
          [:basics3, 'Declaring attributes', 'basics'],
          [:basics4, 'Declaring attributes (2)', 'basics'],
          [:basics5, 'Initial conditions and ordering', 'initialordering'],
          [:basics6, ':no_filter and :allow_ordering', 'initialordering']
        ]
      ],


      ['Other',
        [
          [:negation, 'Text filters with negation', nil],
          [:joining_tables, 'Joined tables', 'querieswithjointables'],
          [:two_associations, '2 associations to the same table', 'joinedassociationsreferringtothesametable'],
          [:many_grids_on_page, 'More than 1 grid on a page', 'morethanonegridonapage'], # !!!
          [:custom_ordering, 'Custom ordering', 'customordering'],
          [:custom_ordering2, 'Custom ordering (2)', 'customordering'],
          [:custom_filters1, 'Custom filters (one table)', 'customdropdownfilters'],
          [:custom_filters2, 'Custom filters (joined tables)', 'customdropdownfilters'],
          [:custom_filters3, 'Custom filters (method chains)', 'customdropdownfilters'],
          [:custom_filters4, 'Custom filters: disallowing multiple selection', 'multipleselection'],
          [:null_values, 'Custom filters (null values)', 'customdropdownfilters'],
          [:auto_reloads, 'Auto reloading filters', 'auto-reloadingfilters'],
          [:action_column, 'Action column', 'actioncolumn'],
          [:buttons, 'Using custom submit/reset buttons', 'submit/resetbuttons'],
          [:styling, 'Styling the grid', 'stylingthegrid'],
          [:adding_rows, 'Adding custom rows', 'addingrowstothegrid'],
          [:no_records, 'A grid without records', 'renderingagridwithoutrecords'],
          [:erb_mode, 'ERB mode', 'erbmode'],
          [:integration_with_forms, 'Integration with other forms', 'integrationofthegridwithotherformsonpage'],
          [:dates, 'Date/Datetime helpers', 'javascriptcalendarfordateanddatetimefilters.'],
          [:all_records, 'Removing link "All Records"', 'showallrecords'],
          [:csv_export, 'CSV Export', 'csvexport'],
          [:detached_filters, 'Detached filters', 'detachedfilters']
        ]
      ],

      ['Integration with the application',
        [
          [:integration_with_application_view, 'View helpers to access records on the current page and all pages', 'accessingrecordsviathewicegridobject'],
          [:resultset_processings, 'Callback to process records of the current page', 'accessingrecordsviacallbacks'],
          [:integration_with_application, 'Callback to process records throughout all pages on demand', 'accessingrecordsviacallbacks'],
          [:localization, 'Localization', 'localization'],
          [:custom_filter_params, 'Generating custom filter parameters', ['http://leikind.org/apis/wice_grid/classes/Wice/GridViewHelper.html#M000002']],
          [:saved_queries, 'Saved queries: simple example', ['http://leikind.org/apis/wice_grid/files/SAVED_QUERIES_HOWTO_rdoc.html']]
        ]
      ]


    ]
  end


end
