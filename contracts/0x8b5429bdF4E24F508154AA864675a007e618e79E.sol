contract main {


// =======================  Init code  ======================


array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    stor1.length = 0
    if not stor1.length <= 0:
        idx = 0
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    return code.data[86 len 1102]
}



// =====================  Runtime code  =====================


mapping of address sub_18357c6d;
array of struct stor1;
uint256 version;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778997;

function sub_18357c6d(?) payable {
    return address(sub_18357c6d[arg1])
}

function version() payable {
    return version
}

function idList(uint256 arg1) payable {
    require arg1 < stor1.length
    return address(stor[code.data[1070 len 32] + arg1])
}

function _fallback() payable {
  stop
}

function sub_ac0fc11c(?) payable {
    if stor1.length:
        mem[160] = address(stor1.field_0)
        idx = 160
        s = 0
        while (32 * stor1.length) + 128 > idx:
            mem[idx + 32] = address(stor1[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len 32 * stor1.length])
}

function sub_48d665b3(?) payable {
    call arg1.owner() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        if not address(sub_18357c6d[ext_call.return_data[12 len 20]]):
            stor1.length++
            if not stor1.length <= stor1.length + 1:
                idx = stor1.length + code.data[1070 len 32] + 1
                while code.data[1070 len 32] + stor1.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            require stor1.length - 1 < stor1.length
            storB10E[stor1.length] = ext_call.return_data[0] or Mask(96, 160, storB10E[stor1.length])
        uint256(sub_18357c6d[address(ext_call.return_data[0])]) = arg1 or Mask(96, 160, uint256(sub_18357c6d[address(ext_call.return_data[0])]))
}

function sub_5cee14d1(?) payable {
    if address(sub_18357c6d[address(msg.sender)]) != 0:
        address(sub_18357c6d[address(msg.sender)]) = 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor[code.data[1070 len 32] + idx]) == msg.sender:
            require stor1.length - 1 < stor1.length
            require idx < stor1.length
            mem[0] = 1
            address(stor[code.data[1070 len 32] + idx]) = address(stor[code.data[1070 len 32] + stor1.length - 1])
            stor1.length--
            if not stor1.length <= stor1.length - 1:
                mem[0] = 1
                s = stor1.length + code.data[1070 len 32] - 1
                while code.data[1070 len 32] + stor1.length > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
        idx = idx + 1
        continue 
}



}
