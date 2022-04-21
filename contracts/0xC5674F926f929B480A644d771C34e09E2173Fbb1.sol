contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint32 stor2; offset 160
address stor2;

function _fallback() payable {
    uint32(stor2.field_160) = Mask(32, 224, sha3('trade(address,uint256,address,ui', 'nt256,uint256,uint256,address,ui', 'nt8,bytes32,bytes32,uint256)')) >> 224
    require not msg.value
    stor0 = code.data[3153 len 20]
    stor1 = code.data[3185 len 20]
    address(stor2.field_0) = code.data[3185 len 20]
    return code.data[330 len 2811]
}



// =====================  Runtime code  =====================


address adminAddress;
address sub_95fa9fc9Address;
uint32 stor2; offset 160
address stor2;

function sub_95fa9fc9(?) {
    return sub_95fa9fc9Address
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function fund() payable {
    emit Fund(msg.sender, msg.value, eth.balance(this.address));
}

function sub_5a1e7337(?) {
    require adminAddress == msg.sender
    sub_95fa9fc9Address = arg1
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function transferOut(uint256 arg1) {
    require adminAddress == msg.sender
    if eth.balance(this.address) < arg1:
        return 0
    call adminAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(arg1);
    return 1
}

function sub_394f000d(?) payable {
    require adminAddress == msg.sender
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).withdraw(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit EtherDeltaWithdraw(arg1);
}

function sub_f2e3a5a4(?) {
    require adminAddress == msg.sender
    if eth.balance(this.address) < arg1:
        return 0
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    emit EtherDeltaDeposit(arg1);
    return 1
}

function sub_1856ccae(?) {
    require adminAddress == msg.sender
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164], address(call.data[196]), call.data[228] << 248, call.data[260], call.data[292], call.data[324]
    require ext_call.success
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[356]), call.data[388], address(call.data[420]), call.data[452], call.data[484], call.data[516], address(call.data[548]), call.data[580] << 248, call.data[612], call.data[644], call.data[676]
    return bool(ext_call.success)
}

function sub_c38f731b(?) {
    require adminAddress == msg.sender
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164], address(call.data[196]), call.data[228] << 248, call.data[260], call.data[292], call.data[324]
    require ext_call.success
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[356]), call.data[388], address(call.data[420]), call.data[452], call.data[484], call.data[516], address(call.data[548]), call.data[580] << 248, call.data[612], call.data[644], call.data[676]
    require adminAddress == msg.sender
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[708]), call.data[740], address(call.data[772]), call.data[804], call.data[836], call.data[868], address(call.data[900]), call.data[932] << 248, call.data[964], call.data[996], call.data[1028]
    require ext_call.success
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[1060]), call.data[1092], address(call.data[1124]), call.data[1156], call.data[1188], call.data[1220], address(call.data[1252]), call.data[1284] << 248, call.data[1316], call.data[1348], call.data[1380]
    return bool(ext_call.success)
}

function sub_1123423d(?) {
    require adminAddress == msg.sender
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[4]), call.data[36], address(call.data[68]), call.data[100], call.data[132], call.data[164], address(call.data[196]), call.data[228] << 248, call.data[260], call.data[292], call.data[324]
    require ext_call.success
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[356]), call.data[388], address(call.data[420]), call.data[452], call.data[484], call.data[516], address(call.data[548]), call.data[580] << 248, call.data[612], call.data[644], call.data[676]
    require adminAddress == msg.sender
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[708]), call.data[740], address(call.data[772]), call.data[804], call.data[836], call.data[868], address(call.data[900]), call.data[932] << 248, call.data[964], call.data[996], call.data[1028]
    require ext_call.success
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[1060]), call.data[1092], address(call.data[1124]), call.data[1156], call.data[1188], call.data[1220], address(call.data[1252]), call.data[1284] << 248, call.data[1316], call.data[1348], call.data[1380]
    require adminAddress == msg.sender
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[1412]), call.data[1444], address(call.data[1476]), call.data[1508], call.data[1540], call.data[1572], address(call.data[1604]), call.data[1636] << 248, call.data[1668], call.data[1700], call.data[1732]
    require ext_call.success
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[1764]), call.data[1796], address(call.data[1828]), call.data[1860], call.data[1892], call.data[1924], address(call.data[1956]), call.data[1988] << 248, call.data[2020], call.data[2052], call.data[2084]
    require adminAddress == msg.sender
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[2116]), call.data[2148], address(call.data[2180]), call.data[2212], call.data[2244], call.data[2276], address(call.data[2308]), call.data[2340] << 248, call.data[2372], call.data[2404], call.data[2436]
    require ext_call.success
    call address(stor2.field_0) with:
       funct uint32(stor2.field_160)
         gas gas_remaining - 25710 wei
        args address(call.data[2468]), call.data[2500], address(call.data[2532]), call.data[2564], call.data[2596], call.data[2628], address(call.data[2660]), call.data[2692] << 248, call.data[2724], call.data[2756], call.data[2788]
    return bool(ext_call.success)
}



}
