# metabase-plain-logs

Tweak to official metabase container to remove ansi codes not controllable via environment variables.

## environment variables

The majority of the non-plain text log entries can be removed by setting the following:

- `MB_COLORIZE_LOGS=false`
- `MB_EMOJI_IN_LOGS=false`

## complete solution

Unfortunately the `log4j.properties` contains hard-coded ansi codes and there does not seem to be an applicable option to disable that short of modifying the configuration file. Thus this repository contains a `Dockerfile` to modify the `log4j.properties` contained within `/app/metabase.jar` to utilize a log pattern that does not contain ansi codes.
