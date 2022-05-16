contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[1786 len 1748]
    require create.new_address
    stor3 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transferCFO(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    create contract with 0 wei
                    code: code.data[3534 len 9863]
    require create.new_address
    stor2 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).addMember(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.addMember(address arg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return code.data[568 len 1218]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address sub_04fe6896Address;
address sub_5bcc7f5eAddress;

function sub_04fe6896(?) {
    return sub_04fe6896Address
}

function sub_5bcc7f5e(?) {
    return sub_5bcc7f5eAddress
}

function owner() {
    return owner
}

function isMember() {
    return bool(stor1[address(msg.sender)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (owner == msg.sender)
}

function addMember(address arg1) {
    require owner == msg.sender
    stor1[address(arg1)] = 1
}

function removeMember(address arg1) {
    require owner == msg.sender
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5febfeaa(?) {
    require ext_code.size(arg1)
    call arg1.0xca6d56dc with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function sub_9bfaf62c(?) {
    require ext_code.size(arg1)
    call arg1.removeMember(address arg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function sub_cf06eb13(?) {
    require owner == msg.sender
    require arg1
    require ext_code.size(sub_5bcc7f5eAddress)
    call sub_5bcc7f5eAddress.transferCFO(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}



}
