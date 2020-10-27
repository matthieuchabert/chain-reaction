defmodule ChainReaction do
  def execute(string \\ File.read!("lib/polymer.txt")) do
    regex =
      ~r{(aA)|(Aa)|(bB)|(Bb)|(cC)|(Cc)|(dD)|(Dd)|(eE)|(Ee)|(fF)|(Ff)|(gG)|(Gg)|(hH)|(Hh)|(iI)|(Ii)|(jJ)|(Jj)|(kK)|(Kk)|(lL)|(Ll)|(mM)|(Mm)|(nN)|(Nn)|(oO)|(Oo)|(Pp)|(pP)|(qQ)|(Qq)|(rR)|(Rr)|(sS)|(Ss)|(tT)|(Tt)|(Uu)|(uU)|(vV)|(Vv)|(wW)|(Ww)|(xX)|(Xx)|(yY)|(Yy)|(zZ)|(Zz)}

    string =
      Regex.split(regex, string)
      |> List.to_string()

    if Regex.match?(regex, string) do
      execute(string)
    else
      String.length(string)
    end
  end
end
