contract main {




// =====================  Runtime code  =====================


address whomAddress;
uint256 mana;
array of struct data;
uint8 done;

function data() payable {
    return data[0 len data.length].field_0
}

function done() payable {
    return bool(done)
}

function mana() payable {
    return mana
}

function whom() payable {
    return whomAddress
}

function _fallback() payable {
    revert
}

function cast() payable {
    mem[160] = calldata.size
    mem[192 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 192] = 0
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if done:
        revert with 0, 'ds-spell-already-cast'
    mem[128] = uint256(data.field_0)
    idx = 128
    s = 0
    while data.length + 96 > idx:
        mem[idx + 32] = data[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call whomAddress.mem[128 len 4] with:
       value mana wei
         gas gas_remaining wei
        args mem[132 len data.length - 4]
    if not ext_call.success:
        revert with 0, 'ds-exec-call-failed'
    done = 1
}



}
