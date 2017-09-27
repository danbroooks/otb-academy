class LCD

  NUM_TO_LCD = {
    0 => (
<<~SQUIGGLY_HEREDOC
 _
| |
|_|
SQUIGGLY_HEREDOC
    ), 1 => (
<<~SQUIGGLY_HEREDOC

|
|
SQUIGGLY_HEREDOC
    ), 2 => (
<<~SQUIGGLY_HEREDOC
 _
 _|
|_
SQUIGGLY_HEREDOC
    ), 3 => (
<<~SQUIGGLY_HEREDOC
_
_|
_|
SQUIGGLY_HEREDOC
    ), 4 => (
<<~SQUIGGLY_HEREDOC

|_|
  |
SQUIGGLY_HEREDOC
    ), 5 => (
<<~SQUIGGLY_HEREDOC
 _
|_
 _|
SQUIGGLY_HEREDOC
    ), 6 => (
<<~SQUIGGLY_HEREDOC
 _
|_
|_|
SQUIGGLY_HEREDOC
    ), 7 => (
<<~SQUIGGLY_HEREDOC
 _
  |
  |
SQUIGGLY_HEREDOC
    ), 8 => (
<<~SQUIGGLY_HEREDOC
 _
|_|
|_|
SQUIGGLY_HEREDOC
    ), 9 => (
<<~SQUIGGLY_HEREDOC
 _
|_|
 _|
SQUIGGLY_HEREDOC
    )
  }

  def convert(num)
    NUM_TO_LCD[num]
  end
end
