contract main {




// =====================  Runtime code  =====================


#
#  - draw()
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#
address owner;
address resolverAddress;
address lottoAddress;
uint256 stor7;
uint256 callbackGas;

function resolver() {
    return resolverAddress
}

function owner() {
    return owner
}

function lotto() {
    return address(lottoAddress)
}

function callbackGas() {
    return callbackGas
}

function _fallback() payable {
  stop
}

function setCallbackGas(uint256 arg1) {
    require msg.sender == owner
    callbackGas = arg1
}

function setNewOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 < eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function freeze() {
    require msg.sender == owner
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
        else:
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(lottoAddress):
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(address(lottoAddress))
    call address(lottoAddress).0x62a5af3b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unfreeze() {
    require msg.sender == owner
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
        else:
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(lottoAddress):
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(address(lottoAddress))
    call address(lottoAddress).0x6a28f000 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function nextround() {
    require msg.sender == owner
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
        else:
            call resolverAddress.0x38cc4831 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(lottoAddress):
                require ext_code.size(resolverAddress)
                call resolverAddress.0x38cc4831 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(address(lottoAddress))
    call address(lottoAddress).0x47e40553 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
