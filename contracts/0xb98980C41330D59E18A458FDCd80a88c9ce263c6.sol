contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
array of uint256 stor10;
uint8 stor11;
uint256 stor12;

function _fallback() payable {
    stor0 = 0xb40d0312bac389ae0a05053020aac80c9237358b
    stor1 = 0x72d48d0082fb0f7f01fc4b215651cc55cb25c81a
    stor2 = 0x3f593a15eb60672687c32492b62ed3e10e149ec6
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    bool(stor10.length) = 0
    stor10.length.field_1 = 4
    stor10.length.field_8 = 'Init' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor11 = 1
    stor12 = 10
    stor3 = stor0
    stor4 = stor1
    stor5 = stor2
    return code.data[735 len 4006]
}



// =====================  Runtime code  =====================


const note = Array(len=41, data='AcceptableLosses disabled in thi', Mask(72, 184, 's version') >> 184, mem[288])

const owner = msg.sender


address sub_113b67c9Address;
uint256 stor0;
address sub_efc2931fAddress;
uint256 stor1;
address sub_00b1d5e9Address;
uint256 stor2;
address stor3;
address stor4;
address stor5;
uint256 sub_8a5a4b0d;
uint256 sub_94e1b3b5;
uint256 sub_1bbc9871;
uint256 sub_84f2f7ef;
array of uint256 status;
uint8 stor11;
uint256 stor11;
uint256 sub_00946fd0;

function sub_00946fd0(?) payable {
    return sub_00946fd0
}

function sub_00b1d5e9(?) payable {
    return address(sub_00b1d5e9Address)
}

function sub_113b67c9(?) payable {
    return address(sub_113b67c9Address)
}

function sub_1bbc9871(?) payable {
    return sub_1bbc9871
}

function status() payable {
    return status[0 len status.length].field_0
}

function sub_84f2f7ef(?) payable {
    return sub_84f2f7ef
}

function sub_8a5a4b0d(?) payable {
    return sub_8a5a4b0d
}

function sub_94e1b3b5(?) payable {
    return sub_94e1b3b5
}

function sub_dd85f087(?) payable {
    return bool(uint8(stor11))
}

function sub_efc2931f(?) payable {
    return address(sub_efc2931fAddress)
}

function _fallback() payable {
  stop
}

function cashOut() payable {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function sub_d302facb(?) payable {
    require msg.sender == msg.sender
    uint256(stor11) = arg1 or Mask(248, 8, uint256(stor11))
    sub_00946fd0 = arg2
}

function sub_47b6fc6f(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    stor3 = address(sub_113b67c9Address)
    uint256(stor1) = arg2 or Mask(96, 160, uint256(stor1))
    stor4 = address(sub_efc2931fAddress)
    uint256(stor2) = arg3 or Mask(96, 160, uint256(stor2))
    stor5 = address(sub_00b1d5e9Address)
}

function sub_110077db(?) payable {
    bool(status.length) = 0
    status.length.field_1 = 9
    status.length.field_8 = 'preAttack' / 256
    idx = 0
    while status.length + 31 / 32 > idx:
        status[idx].field_0 = 0
        idx = idx + 1
        continue 
    call stor3.getCity(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    sub_8a5a4b0d = ext_call.return_data[0]
    sub_94e1b3b5 = sub_8a5a4b0d
    call stor3.players(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    sub_1bbc9871 = ext_call.return_data[160]
    return 1
}

function sub_17710b23(?) payable {
    call stor3.getCity(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    sub_94e1b3b5 = ext_call.return_data[0]
    call stor3.players(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    mem[(32 * arg3.length) + 1120 len 224] = ext_call.return_data[0 len 224]
    sub_84f2f7ef = ext_call.return_data[160]
    if sub_8a5a4b0d != sub_94e1b3b5:
        bool(status.length) = 0
        status.length.field_1 = 28
        status.length.field_8 = 'attacking and capturing city' / 256
        idx = 0
        while status.length + 31 / 32 > idx:
            status[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if uint8(stor11):
            return 0
        mem[(32 * arg3.length) + 1152] = 'attacking but NOT capturing city'
        status.length = 65
        s = 0
        idx = (32 * arg3.length) + 1152
        while (32 * arg3.length) + 1184 > idx:
            status[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while status.length + 31 / 32 > idx:
            status[idx].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}



}
