json.array!(@ticket_comments) do |ticket_comment|
  json.extract! ticket_comment, :id, :comment, :ticket_id, :tickets_id
  json.url ticket_comment_url(ticket_comment, format: :json)
end
