contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1463]




// =====================  Runtime code  =====================


mapping of address sub_6f511e07;
mapping of uint8 stor1;
array of uint256 sub_eb51cc91;

function sub_254f5426(?) {
    return sub_6f511e07[arg1]
}

function sub_6f511e07(?) {
    return sub_6f511e07[arg1]
}

function sub_e50caf21(?) {
    return bool(stor1[arg1])
}

function sub_eb51cc91(?) {
    return sub_eb51cc91[0 len sub_eb51cc91.length].field_0
}

function _fallback() payable {
    revert
}

function sub_013a8421(?) {
    if sub_6f511e07[arg1] != msg.sender:
        if sub_6f511e07[arg1]:
            uint8(sub_eb51cc91.length) = 20
            sub_eb51cc91.length.field_8 = 0
            sub_eb51cc91.length.field_176 = 460236205954174897254258
            idx = 0
            while sub_eb51cc91.length + 31 / 32 > idx:
                sub_eb51cc91[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            uint8(sub_eb51cc91.length) = 22
            sub_eb51cc91.length.field_8 = 0
            sub_eb51cc91.length.field_168 = 133479522603006664707763828
            idx = 0
            while sub_eb51cc91.length + 31 / 32 > idx:
                sub_eb51cc91[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        sub_6f511e07[arg1] = 0
        stor1[address(msg.sender)] = 0
        uint8(sub_eb51cc91.length) = 14
        sub_eb51cc91.length.field_8 = 0
        sub_eb51cc91.length.field_200 = 'success' % 72057594037927936
        idx = 0
        while sub_eb51cc91.length + 31 / 32 > idx:
            sub_eb51cc91[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_b7b48d0e(?) {
    if sub_6f511e07[arg1]:
        uint8(sub_eb51cc91.length) = 26
        sub_eb51cc91.length.field_8 = 0
        sub_eb51cc91.length.field_152 = 0x6e69636b5f6f63637570696564
        idx = 0
        while sub_eb51cc91.length + 31 / 32 > idx:
            sub_eb51cc91[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor1[address(msg.sender)]:
            uint8(sub_eb51cc91.length) = 16
            sub_eb51cc91.length.field_8 = 0
            sub_eb51cc91.length.field_192 = uint64('has_nick')
            idx = 0
            while sub_eb51cc91.length + 31 / 32 > idx:
                sub_eb51cc91[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            sub_6f511e07[arg1] = msg.sender
            stor1[address(msg.sender)] = 1
            uint8(sub_eb51cc91.length) = 14
            sub_eb51cc91.length.field_8 = 0
            sub_eb51cc91.length.field_200 = 'success' % 72057594037927936
            idx = 0
            while sub_eb51cc91.length + 31 / 32 > idx:
                sub_eb51cc91[idx].field_0 = 0
                idx = idx + 1
                continue 
}



}
