contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of struct sub_d0984d65;

function sub_d0984d65(?) {
    return sub_d0984d65[arg1][0 len sub_d0984d65[arg1].length].field_0
}

function isMaster(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function renounceMaster() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit MasterRemoved(msg.sender);
}

function addMaster(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit MasterAdded(arg1);
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender
    require stor0[address(msg.sender)]
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args arg3[all]
}

function isAddressSet(address arg1) {
    idx = 128
    s = 0
    while sub_d0984d65[address(arg1)].length + 96 > idx:
        mem[idx + 32] = sub_d0984d65[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_d0984d65[address(arg1)].length:
        return 1
    return 0
}

function unMap(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    sub_d0984d65[address(arg1)].field_0 = 0
    sub_d0984d65[address(arg1)].field_1 = 0
    sub_d0984d65[address(arg1)].field_8 = mem[128 len 31]
    idx = 0
    while sub_d0984d65[address(arg1)].length + 31 / 32 > idx:
        sub_d0984d65[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit UnMap(arg1);
}

function doMap(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender
    require stor0[address(msg.sender)]
    mem[ceil32(arg2.length) + 128] = sub_d0984d65[address(arg1)].length
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + sub_d0984d65[address(arg1)].length + 128 > idx:
        mem[idx + 32] = sub_d0984d65[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require not sub_d0984d65[address(arg1)].length
    sub_d0984d65[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    if arg2.length:
        emit DoMap(Array(len=arg2.length, data=arg2[all]), arg1, mem[128]);
    else:
        emit DoMap(Array(len=arg2.length, data=arg2[all]), arg1, 0);
}

function _fallback() payable {
    idx = 128
    s = 0
    while sub_d0984d65[address(msg.sender)].length + 96 > idx:
        mem[idx + 32] = sub_d0984d65[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require not sub_d0984d65[address(msg.sender)].length
    require msg.value > 0
    mem[ceil32(sub_d0984d65[address(msg.sender)].length) + 160 len calldata.size] = call.data[0 len calldata.size]
    sub_d0984d65[address(msg.sender)][].field_0 = Array(len=calldata.size, data=call.data[0 len calldata.size])
    if calldata.size:
        emit DoMapAuto(Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, mem[ceil32(sub_d0984d65[address(msg.sender)].length) + 160]);
    else:
        emit DoMapAuto(Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, 0);
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
