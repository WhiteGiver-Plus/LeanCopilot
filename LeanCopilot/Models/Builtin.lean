import ModelCheckpointManager
import LeanCopilot.Models.ByT5
import LeanCopilot.Models.External
set_option autoImplicit false

namespace LeanCopilot.Builtin


def generator : NativeGenerator := {
  url := Url.parse! "https://huggingface.co/kaiyuy/ct2-leandojo-lean4-tacgen-byt5-small"
  tokenizer := ByT5.tokenizer
  params := {
    numReturnSequences := 32
  }
}

def mygenerator: ExternalGenerator := {
  name := "customgen"
  -- host := "console.siflow.cn/siflow/draco/ai4math/zhqin/tacticgen-v1"
  host := "localhost"
  port := 23337
}


def encoder : NativeEncoder := {
  url := Url.parse! "https://huggingface.co/kaiyuy/ct2-leandojo-lean4-retriever-byt5-small"
  tokenizer := ByT5.tokenizer
}


def premisesUrl := Url.parse! "https://huggingface.co/kaiyuy/premise-embeddings-leandojo-lean4-retriever-byt5-small"


end LeanCopilot.Builtin
