module ThemeInstallationsHelper
  def sort_link(column, title = nil)
    caret_up = '<svg class="polaris-icon__svg icon-right" viewBox="0 0 20 20"><path d="M15 12l-5-5-5 5z"></path></svg>'
    caret_down = '<svg class="polaris-icon__svg icon-right" viewBox="0 0 20 20"><path d="M5 8l5 5 5-5z" fill-rule="evenodd"></path></svg>'

    # caret_up = 'up'
    # caret_down = 'down'

    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    icon = sort_direction == "asc" ? caret_up : caret_down
    icon = column == sort_column ? icon : ""

    link_content = title + icon
    link_to raw(link_content).html_safe, {column: column, direction: direction}, :class=>"btn btn-link-sort"
  end
end
