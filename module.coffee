imdb = require 'imdb-api'

module.exports.routes =
  '!imdb *': (req) ->
    title = req.splats[0]

    imdb.getReq name: title, (err, result) =>
      if err?
        @error err.message
        return @say req.channel, err.message

      @say req.channel, """
      #{result.title} (#{result._year_data}) [#{result.rating}]
      #{result.imdburl}
      """


