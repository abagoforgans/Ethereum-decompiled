contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;

function _fallback() {
    stor0 = code.data[13642 len 32]
    if code.data[13686 len 20]:
        stor2 = code.data[13686 len 20]
    else:
        if code.data[13622 len 20]:
            stor2 = code.data[13622 len 20]
        else:
            stor2 = msg.sender
    return code.data[163 len 13447]
}



// =====================  Runtime code  =====================


const regName = 'Bakt'

const VERSION = 'Bakt Factory v0.3.4-beta'


uint256 resource;
address owner;
uint256 value;

function resource() {
    return resource
}

function value() {
    return value
}

function owner() {
    return owner
}

function destroy() {
    require owner == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function set(uint256 arg1) {
    require owner == msg.sender
    value = arg1
    return 1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    emit ChangedOwner(owner, arg1);
    owner = arg1
    return 1
}

function changeResource(bytes32 arg1) {
    require owner == msg.sender
    resource = arg1
    emit ChangedResource(arg1);
    return 1
}

function withdraw() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function createNew(bytes32 arg1, address arg2) payable {
    if value != msg.value:
        require owner == msg.sender
    require arg1
    create contract with 0 wei
                    code: code.data[1273 len 12131], owner, arg1, msg.sender
    require create.new_address
    emit Created(msg.sender, arg1, address(create.new_address));
    return address(create.new_address)
}



}
