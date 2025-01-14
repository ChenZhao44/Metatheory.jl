module EGraphs

include("../docstrings.jl")

using RuntimeGeneratedFunctions
RuntimeGeneratedFunctions.init(@__MODULE__)

# import ..Rule
# import ..getrhsfun

using ..TermInterface
using ..Util
using ..Rules
import ..@log


include("enode.jl")
export ENode

include("abstractanalysis.jl")
export AbstractAnalysis

include("eclass.jl")
export EClass
export hasdata
export getdata
export setdata!

include("intdisjointmap.jl")
export IntDisjointSet
export in_same_set

include("egraph.jl")
export find
export geteclass
export arity
export EGraph
export merge!
export in_same_class
export addexpr!
export rebuild!


include("analysis.jl")
export analyze!

# include("substitution.jl")
# export instantiate
# export instantiateterm

include("subst.jl")
export Sub


# include("ematch.jl")
include("ematch.jl")
include("Schedulers/Schedulers.jl")
export Schedulers
using .Schedulers

include("saturation/goal.jl")
export SaturationGoal
export EqualityGoal
export reached
include("saturation/reason.jl")
export ReportReasons
include("saturation/report.jl")
include("saturation/params.jl")
export SaturationParams
include("saturation/search.jl")
include("saturation/apply.jl")
include("saturation/saturation.jl")
export saturate!

include("equality.jl")
export areequal
export @areequal
export @areequalg

include("extraction.jl")
export extract!
export ExtractionAnalysis
export astsize
export astsize_inv
export @extract

end
