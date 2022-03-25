contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 10^18
    return code.data[49 len 1468]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of struct meta;
array of uint256 stor2;
uint256 fee;

function meta(bytes32 arg1, bytes32 arg2) {
    return meta[arg1][2][arg2].field_0
}

function count() {
    return stor2.length
}

function owner() {
    return address(owner)
}

function get(bytes32 arg1) {
    return meta[arg1].field_0, meta[arg1].field_256
}

function fee() {
    return fee
}

function at(uint256 arg1) {
    require arg1 < stor2.length
    return meta[stor2[arg1]].field_0, meta[stor2[arg1]].field_256
}

function _fallback() payable {
    revert 
}

function setFee(uint256 arg1) {
    require msg.sender == address(owner)
    fee = arg1
}

function setOwner(address arg1) {
    require msg.sender == address(owner)
    emit NewOwner(address(owner), arg1);
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setMeta(bytes32 arg1, bytes32 arg2, bytes32 arg3) {
    require msg.sender == meta[arg1].field_256
    meta[arg1][2][arg2].field_0 = arg3
    emit MetaChanged(arg3, arg1, arg2);
}

function drain() {
    require msg.sender == address(owner)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setDappOwner(bytes32 arg1, address arg2) {
    require msg.sender == meta[arg1].field_256
    meta[arg1].field_256 = arg2 or Mask(96, 160, meta[arg1].field_256)
    emit OwnerChanged(arg1, arg2);
}

function unregister(bytes32 arg1) {
    if meta[arg1].field_256 != msg.sender:
        require msg.sender == address(owner)
    meta[arg1].field_0 = 0
    meta[arg1].field_256 = 0
    emit Unregistered(arg1);
}

function register(bytes32 arg1) payable {
    require msg.value >= fee
    require 0 == meta[arg1].field_0
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor2[stor2.length] = arg1
    meta[arg1].field_0 = arg1
    meta[arg1].field_256 = msg.sender or Mask(96, 160, meta[arg1].field_256)
    emit Registered(arg1, msg.sender);
}



}
