contract main {




// =====================  Runtime code  =====================


const NAME = 'MultiSender'


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function send(address[] arg1, uint256[] arg2) {
    require arg2.length == arg1.length
    s = 0
    idx = 0
    while idx < arg2.length:
        s = s + cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
    require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length <= eth.balance(this.address)
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value cd[((32 * idx) + arg2 + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        require idx < arg2.length
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
