contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() {
    stor0 = 10001
    stor1 = msg.sender
    return code.data[60 len 2764]
}



// =====================  Runtime code  =====================


uint256 nextId;
address owner;
mapping of address contracts;

function contracts(uint256 arg1) {
    return contracts[arg1]
}

function nextId() {
    return nextId
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function delegate(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_7cdaa2c9(?) {
    create contract with 0 wei
                    code: code.data[568 len 2153], msg.sender, address(this.address), nextId, arg1, arg2 << 248
    require create.new_address
    contracts[stor0] = address(create.new_address)
    nextId++
    return address(create.new_address)
}



}
