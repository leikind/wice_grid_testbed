class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :init_example_map

  protected

  def init_example_map
    @example_map = [
      ['Basics',
        [
          [:basics1, 'Most simple grid'],
          [:basics2, 'Named columns'],
          [:upper_pagination_panel, 'Two pagination panels'],
          [:basics3, 'Associating columns with database fields'],
          [:blockless_column_definition, 'Dropping the block in #column'],

          [:basics4, 'Disabling filters'],
          [:basics5, 'Disabling ordering'],
          [:basics6, 'Initial conditions and ordering']
        ]
      ],


      ['Other',
        [
          [:negation, 'Text filters with negation'],
          [:joining_tables, 'Joined tables'],
          [:two_associations, '2 associations to the same table'],
          [:many_grids_on_page, 'More than 1 grid on a page'], # !!!
          [:custom_ordering, 'Custom ordering'],
          [:custom_ordering2, 'Custom ordering (2)'],
          [:custom_filters1, 'Custom filters (one table)'],
          [:custom_filters2, 'Custom filters (joined tables)'],
          [:custom_filters3, 'Custom filters (method chains)'],
          [:custom_filters4, 'Custom filters: disallowing multiple selection'],
          [:null_values, 'Custom filters (null values)'],
          [:auto_reloads, 'Auto reloading filters'],
          [:action_column, 'Action column'],
          [:buttons, 'Using custom submit/reset buttons'],
          [:styling, 'Styling the grid'],
          [:adding_rows, 'Adding custom rows'],
          [:no_records, 'A grid without records'],
          [:integration_with_forms, 'Integration with other forms'],
          [:dates, 'Date/Datetime helpers'],
          [:all_records, 'Removing link "All Records"'],
          [:csv_export, 'CSV Export'],
          [:detached_filters, 'Detached filters']
        ]
      ],

      ['Integration with the application',
        [
          [:integration_with_application_view, 'View helpers to access records on the current page and all pages'],
          [:resultset_processings, 'Callback to process records of the current page'],
          [:integration_with_application, 'Callback to process records throughout all pages on demand'],
          [:localization, 'Localization'],
          [:custom_filter_params, 'Generating custom filter parameters'],
          [:saved_queries, 'Saved queries: simple example']
        ]
      ]
    ]
  end


end
