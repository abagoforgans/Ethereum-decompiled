contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;

function getAdmin() {
    return adminAddress
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function admin() {
    return adminAddress
}

function setAdmin(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender not authorised.'
    adminAddress = arg1
}

function _fallback() payable {
    if msg.value > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
