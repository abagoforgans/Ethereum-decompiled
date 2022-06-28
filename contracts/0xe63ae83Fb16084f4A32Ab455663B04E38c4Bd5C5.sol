contract main {




// =====================  Runtime code  =====================


address ceoAddress;
address cfoAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address cooAddress;
address sub_598844dcAddress;
uint32 stor4;
uint256 sub_c71e261f;
mapping of address sub_96b5d992;
array of uint256 sub_317676bf;
address newContractAddress;

function cfoAddress() {
    return cfoAddress
}

function ceoAddress() {
    return ceoAddress
}

function sub_317676bf(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_317676bf[arg1]
    return sub_317676bf[arg1][arg2]
}

function sub_598844dc(?) {
    return sub_598844dcAddress
}

function paused() {
    return bool(uint8(stor2.field_160))
}

function newContractAddress() {
    return newContractAddress
}

function sub_96b5d992(?) {
    require calldata.size - 4 >= 32
    return sub_96b5d992[arg1]
}

function cooAddress() {
    return cooAddress
}

function sub_c71e261f(?) {
    return uint256(sub_c71e261f)
}

function sub_cdd22c93(?) {
    require calldata.size - 4 >= 32
    return sub_317676bf[arg1]
}

function _fallback() payable {
    revert
}

function setCEO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    cooAddress = arg1
}

function setCFO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    cfoAddress = arg1
}

function sub_474b951e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    sub_598844dcAddress = arg1
}

function setNewAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    newContractAddress = arg1
    emit ContractUpgrade(arg1);
}

function pause() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require not uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 1
}

function sub_3ffe60c0(?) {
    require calldata.size - 4 >= 64
    require sub_598844dcAddress
    require msg.sender == sub_598844dcAddress
    sub_317676bf[arg1]++
    sub_317676bf[arg1][sub_317676bf[arg1]] = arg2
}

function unpause() {
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    require not newContractAddress
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 0
}

function withdrawBalance() {
    require msg.sender == cfoAddress
    call cfoAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6e81ca72(?) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require uint256(sub_c71e261f) == uint32(stor4)
    uint256(sub_c71e261f)++
    sub_96b5d992[uint256(stor4)] = arg1
    emit 0x982bb66d: address(arg1), uint256(sub_c71e261f)
    return uint256(sub_c71e261f)
}



}
