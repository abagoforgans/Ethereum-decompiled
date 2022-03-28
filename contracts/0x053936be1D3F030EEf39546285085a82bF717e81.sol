contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor4;
uint256 stor5;
uint8 stor6;

function _fallback() payable {
    stor4 = 100
    stor5 = 60
    stor6 = 0
    require not msg.value
    stor2 = msg.sender
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                else:
                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).setProofType(bytes1 rg1) with:
         gas gas_remaining - 50 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    return code.data[1449 len 7208]
}



// =====================  Runtime code  =====================


#
#  - sub_50367f97(?)
#
address stor0;
address stor1;
uint256 stor1;
address _owner;
array of uint256 sub_97dd0a28;
mapping of uint8 stor8;
array of uint256 sub_b11515fc;
array of uint256 _price;
array of uint256 sub_a3ea32f4;

function _price() {
    return _price[0 len _price.length]
}

function sub_97dd0a28(?) {
    return sub_97dd0a28[0 len sub_97dd0a28.length]
}

function sub_a3ea32f4(?) {
    return sub_a3ea32f4[0 len sub_a3ea32f4.length].field_0
}

function sub_b11515fc(?) {
    return sub_b11515fc[0 len sub_b11515fc.length]
}

function _owner() {
    return _owner
}

function kill() {
    if _owner != msg.sender:
    selfdestruct(_owner)
}

function _fallback() payable {
    revert
}

function ChangeOwner(address arg1) {
    if msg.sender == _owner:
        require eth.balance(arg1) > 0
        _owner = arg1
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                else:
                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).cbAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require bool(stor8[arg1]) != 1
    stor8[arg1] = 1
    sub_97dd0a28[] = Array(len=arg2.length, data=arg2[all])
    sub_a3ea32f4[].field_0 = Array(len=arg3.length, data=arg3[all])
}

function __callback(bytes32 arg1, string arg2) {
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                else:
                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).cbAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require bool(stor8[arg1]) != 1
    stor8[arg1] = 1
    sub_97dd0a28[] = Array(len=arg2.length, data=arg2[all])
    bool(sub_a3ea32f4.length) = 0
    sub_a3ea32f4.length.field_1 = 0
    sub_a3ea32f4.length.field_8 = ext_call.return_data[0] / 256
    idx = 0
    while sub_a3ea32f4.length + 31 / 32 > idx:
        sub_a3ea32f4[idx].field_0 = 0
        idx = idx + 1
        continue 
}



}
