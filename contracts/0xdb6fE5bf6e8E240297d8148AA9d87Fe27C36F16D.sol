contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = msg.sender
    return code.data[53 len 2127]
}



// =====================  Runtime code  =====================


address proxyAddress;
uint64 stor1;
uint128 stor1; offset 64
address contractOwner;
uint64 stor2;
address pendingContractOwner;
address feeAddress;

function feeAddress() {
    return feeAddress
}

function pendingContractOwner() {
    return address(pendingContractOwner)
}

function contractOwner() {
    return contractOwner
}

function proxy() {
    return proxyAddress
}

function _fallback() payable {
    revert 
}

function __process(bytes arg1, address arg2) payable {
    revert 
}

function init(address arg1) {
    if proxyAddress:
        return 0
    proxyAddress = arg1
    return 1
}

function setupFee(address arg1) {
    if contractOwner != msg.sender:
        return 0
    feeAddress = arg1
    return 1
}

function calculateFee(uint256 arg1) {
    if not 15 * arg1 % 10000:
        return (15 * arg1 / 10000)
    return ((15 * arg1 / 10000) + 1)
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    address(pendingContractOwner) = arg1
    return 1
}

function claimContractOwnership() {
    if address(pendingContractOwner) != msg.sender:
        return 0
    uint64(stor1.field_0) = uint64(stor2)
    Mask(96, 0, stor1.field_64) = 0
    address(pendingContractOwner) = 0
    return 1
}

function __approve(address arg1, uint256 arg2, address arg3) {
    if proxyAddress != msg.sender:
        return 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x7b7054c8 with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function __transferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    if proxyAddress != msg.sender:
        return 0
    if not feeAddress:
        if ext_code.size(proxyAddress):
            call proxyAddress.0x6a630ee7 with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), address(arg4)
            if ext_call.success:
                if ext_call.return_data[0]:
                    return bool(ext_call.return_data[0])
                if not feeAddress:
                    return bool(ext_call.return_data[0])
                if feeAddress == arg4:
                    return bool(ext_call.return_data[0])
                if not arg2:
                    return bool(ext_call.return_data[0])
    else:
        if feeAddress == arg4:
            if ext_code.size(proxyAddress):
                call proxyAddress.0x6a630ee7 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), address(arg4)
                if ext_call.success:
                    if ext_call.return_data[0]:
                        return bool(ext_call.return_data[0])
                    if not feeAddress:
                        return bool(ext_call.return_data[0])
                    if feeAddress == arg4:
                        return bool(ext_call.return_data[0])
                    if not arg2:
                        return bool(ext_call.return_data[0])
        else:
            if not arg2:
                if ext_code.size(proxyAddress):
                    call proxyAddress.0x6a630ee7 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), address(arg4)
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            return bool(ext_call.return_data[0])
                        if not feeAddress:
                            return bool(ext_call.return_data[0])
                        if feeAddress == arg4:
                            return bool(ext_call.return_data[0])
                        if not arg2:
                            return bool(ext_call.return_data[0])
            else:
                mem[ceil32(arg3.length) + 420] = mem[ceil32(arg3.length) + 437 len 15]
                if not 15 * arg2 % 10000:
                    if ext_code.size(proxyAddress):
                        call proxyAddress.0xec698a28 with:
                             gas gas_remaining - 50 wei
                            args address(arg4), feeAddress, 15 * arg2 / 10000, Array(len=15, data=mem[ceil32(arg3.length) + 420]), address(arg4)
                        if ext_call.success:
                            if not ext_call.return_data[0]:
                                return 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress.0x6a630ee7 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), address(arg4)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return bool(ext_call.return_data[0])
                                    if not feeAddress:
                                        return bool(ext_call.return_data[0])
                                    if feeAddress == arg4:
                                        return bool(ext_call.return_data[0])
                                    if not arg2:
                                        return bool(ext_call.return_data[0])
                else:
                    if ext_code.size(proxyAddress):
                        call proxyAddress.0xec698a28 with:
                             gas gas_remaining - 50 wei
                            args address(arg4), feeAddress, (15 * arg2 / 10000) + 1, Array(len=15, data=mem[ceil32(arg3.length) + 420]), address(arg4)
                        if ext_call.success:
                            if not ext_call.return_data[0]:
                                return 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress.0x6a630ee7 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), address(arg4)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return bool(ext_call.return_data[0])
                                    if not feeAddress:
                                        return bool(ext_call.return_data[0])
                                    if feeAddress == arg4:
                                        return bool(ext_call.return_data[0])
                                    if not arg2:
                                        return bool(ext_call.return_data[0])
    revert 
}

function __transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    if proxyAddress != msg.sender:
        return 0
    if not feeAddress:
        if ext_code.size(proxyAddress):
            call proxyAddress.0xec698a28 with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
            if ext_call.success:
                if ext_call.return_data[0]:
                    return bool(ext_call.return_data[0])
                if not feeAddress:
                    return bool(ext_call.return_data[0])
                if feeAddress == arg1:
                    return bool(ext_call.return_data[0])
                if not arg3:
                    return bool(ext_call.return_data[0])
    else:
        if feeAddress == arg1:
            if ext_code.size(proxyAddress):
                call proxyAddress.0xec698a28 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                if ext_call.success:
                    if ext_call.return_data[0]:
                        return bool(ext_call.return_data[0])
                    if not feeAddress:
                        return bool(ext_call.return_data[0])
                    if feeAddress == arg1:
                        return bool(ext_call.return_data[0])
                    if not arg3:
                        return bool(ext_call.return_data[0])
        else:
            if not arg3:
                if ext_code.size(proxyAddress):
                    call proxyAddress.0xec698a28 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            return bool(ext_call.return_data[0])
                        if not feeAddress:
                            return bool(ext_call.return_data[0])
                        if feeAddress == arg1:
                            return bool(ext_call.return_data[0])
                        if not arg3:
                            return bool(ext_call.return_data[0])
            else:
                mem[ceil32(arg4.length) + 420] = mem[ceil32(arg4.length) + 437 len 15]
                if not 15 * arg3 % 10000:
                    if ext_code.size(proxyAddress):
                        call proxyAddress.0xec698a28 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), feeAddress, 15 * arg3 / 10000, Array(len=15, data=mem[ceil32(arg4.length) + 420]), address(arg5)
                        if ext_call.success:
                            if not ext_call.return_data[0]:
                                return 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress.0xec698a28 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return bool(ext_call.return_data[0])
                                    if not feeAddress:
                                        return bool(ext_call.return_data[0])
                                    if feeAddress == arg1:
                                        return bool(ext_call.return_data[0])
                                    if not arg3:
                                        return bool(ext_call.return_data[0])
                else:
                    if ext_code.size(proxyAddress):
                        call proxyAddress.0xec698a28 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), feeAddress, (15 * arg3 / 10000) + 1, Array(len=15, data=mem[ceil32(arg4.length) + 420]), address(arg5)
                        if ext_call.success:
                            if not ext_call.return_data[0]:
                                return 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress.0xec698a28 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return bool(ext_call.return_data[0])
                                    if not feeAddress:
                                        return bool(ext_call.return_data[0])
                                    if feeAddress == arg1:
                                        return bool(ext_call.return_data[0])
                                    if not arg3:
                                        return bool(ext_call.return_data[0])
    revert 
}



}
