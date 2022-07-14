contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address newOwner;
mapping of uint8 stor2;
address tokenContractAddress;

function tokenContract() payable {
    return tokenContractAddress
}

function owner() payable {
    return address(owner)
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function newOwner() payable {
    return newOwner
}

function _fallback() payable {
    revert
}

function updateTokenContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 32, 22, 0xfe617574686f72697a65645b6d73672e73656e6465725d000000000000000000
    tokenContractAddress = arg1
}

function setAuthorized(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    emit AuthorizationSet(arg1, arg2);
    stor2[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    if not arg1:
        revert with 0, 'address(0) != _newOwner'
    newOwner = arg1
}

function acceptOwnership() payable {
    if newOwner != msg.sender:
        revert with 0, 'msg.sender == newOwner'
    emit OwnershipTransferred(address(owner), msg.sender);
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    newOwner = 0
}

function withdrawEther() payable {
    if not stor2[msg.sender]:
        revert with 0, 32, 22, 0xfe617574686f72697a65645b6d73672e73656e6465725d000000000000000000
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdrawTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        revert with 0, 32, 22, 0xfe617574686f72697a65645b6d73672e73656e6465725d000000000000000000
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function multiSend(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if not stor2[msg.sender]:
        revert with 0, 32, 22, 0xfe617574686f72697a65645b6d73672e73656e6465725d000000000000000000
    if arg1.length != arg2.length:
        revert with 0, '_dests.length == _values.length'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _28 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _28
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _28
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return arg1.length
}



}
