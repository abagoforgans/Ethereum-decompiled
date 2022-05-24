contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 partner_1_name;
array of uint256 partner_2_name;
array of uint256 contract_date;
array of uint256 declaration;
uint8 stor5;

function is_active() {
    return bool(stor5)
}

function declaration() {
    return declaration[0 len declaration.length]
}

function contract_date() {
    return contract_date[0 len contract_date.length]
}

function partner_1_name() {
    return partner_1_name[0 len partner_1_name.length]
}

function partner_2_name() {
    return partner_2_name[0 len partner_2_name.length]
}

function _fallback() payable {
    revert
}

function updateStatus(bool arg1) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the administrator can change this'
    stor5 = uint8(arg1)
    emit StatusChanged(bool(stor5));
}



}
