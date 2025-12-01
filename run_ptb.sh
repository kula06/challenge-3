sui client ptb \
  --move-call 0x681c6cf2f87e99b24096e64feece5a5f3b12d730a1f0c63b2c1dde7e700a5738::transaction_blocks::create_object \
  --assign obj \
  --move-call 0xcf8a83ca5498c09cb9dbbed9cb7796a90072c9d02b87eb7d4677825dd504d435::transaction_blocks::emit_object '<0x681c6cf2f87e99b24096e64feece5a5f3b12d730a1f0c63b2c1dde7e700a5738::transaction_blocks::MoveObject>' obj \
  --move-call 0x681c6cf2f87e99b24096e64feece5a5f3b12d730a1f0c63b2c1dde7e700a5738::transaction_blocks::destroy_object \
    obj \
  --gas-budget 100000000 \
  "$@"