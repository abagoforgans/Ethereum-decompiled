contract main {




// =====================  Runtime code  =====================


address creatorAddress;
address sub_60b242eaAddress;

function creator() {
    return creatorAddress
}

function sub_60b242ea(?) {
    return sub_60b242eaAddress
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_df4d192a(?) {
    emit 0x29ca33a7: msg.sender, tx.origin
}

function sub_7746d853(?) {
    emit 0xa81d25c3: gas_remaining, block.gasprice, block.gas_limit
}

function sub_7bc8042d(?) {
    emit 0x45b68aa8: block.coinbase, block.difficulty, block.number, block.timestamp
}

function getBlockHash(uint256 arg1) {
    emit 0x45b68aa8: block.coinbase, block.difficulty, block.number, block.timestamp
    emit 0xa81d25c3: gas_remaining, block.gasprice, block.gas_limit
    emit 0xa81d25c3: gas_remaining, block.gasprice, block.gas_limit
    emit 0x29ca33a7: msg.sender, tx.origin
    return block.hash(arg1)
}

function sub_82bc92aa(?) {
    if creatorAddress != msg.sender:
        revert with 0, 'unauthorized'
    emit 0x36138f34: address(arg1), eth.balance(arg1)
    call arg1 with:
       value 1 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x36138f34: address(arg1), eth.balance(arg1)
    call arg1 with:
       value 1 wei
         gas 0 wei
    emit 0x36138f34: address(arg1), eth.balance(arg1)
    emit 0x45b68aa8: block.coinbase, block.difficulty, block.number, block.timestamp
    emit 0xa81d25c3: gas_remaining, block.gasprice, block.gas_limit
    emit 0xa81d25c3: gas_remaining, block.gasprice, block.gas_limit
    emit 0x29ca33a7: msg.sender, tx.origin
}

function sub_fccc7914(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    emit 0x45b68aa8: block.coinbase, block.difficulty, block.number, block.timestamp
    emit 0xa81d25c3: gas_remaining, block.gasprice, block.gas_limit
    emit 0xa81d25c3: gas_remaining, block.gasprice, block.gas_limit
    emit 0x29ca33a7: msg.sender, tx.origin
    return sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), 
           block.hash(arg2)
}



}
