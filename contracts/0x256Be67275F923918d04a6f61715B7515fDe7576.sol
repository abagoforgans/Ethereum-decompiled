contract main {


// =======================  Init code  ======================


uint256 stor4;

function _fallback() payable {
    stor4 = 5760
    require not msg.value
    return code.data[34 len 1968]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
address tokenAddress;
address owner;
address fromAddress;
uint256 staticblock;

function staticblock() {
    return staticblock
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function state() {
    return bool(uint8(stor0.field_160))
}

function from() {
    return fromAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require bool(uint8(stor0.field_160)) == 1
    owner = arg1
    return 1
}

function init(address arg1, address arg2) {
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    tokenAddress = arg1
    address(stor0.field_0) = arg1
    owner = msg.sender
    fromAddress = arg2
    return 1
}

function disburse(address arg1) {
    require bool(uint8(stor0.field_160)) == 1
    require owner == msg.sender
    require staticblock > 0
    require staticblock
    if not block.number / staticblock:
        if block.number / staticblock * staticblock <= block.number:
            if not block.number - (block.number / staticblock * staticblock):
                if ext_code.size(address(stor0.field_0)):
                    call address(stor0.field_0).0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args fromAddress, address(arg1), (4340277 * block.number) - (4340277 * block.number / staticblock * staticblock)
                    if ext_call.success:
                        return 1
            else:
                if block.number - (block.number / staticblock * staticblock):
                    if (4340277 * block.number) - (4340277 * block.number / staticblock * staticblock) / block.number - (block.number / staticblock * staticblock) == 4340277:
                        if ext_code.size(address(stor0.field_0)):
                            call address(stor0.field_0).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args fromAddress, address(arg1), (4340277 * block.number) - (4340277 * block.number / staticblock * staticblock)
                            if ext_call.success:
                                return 1
    else:
        if block.number / staticblock:
            if block.number / staticblock * staticblock / block.number / staticblock == staticblock:
                if block.number / staticblock * staticblock <= block.number:
                    if not block.number - (block.number / staticblock * staticblock):
                        if ext_code.size(address(stor0.field_0)):
                            call address(stor0.field_0).0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args fromAddress, address(arg1), (4340277 * block.number) - (4340277 * block.number / staticblock * staticblock)
                            if ext_call.success:
                                return 1
                    else:
                        if block.number - (block.number / staticblock * staticblock):
                            if (4340277 * block.number) - (4340277 * block.number / staticblock * staticblock) / block.number - (block.number / staticblock * staticblock) == 4340277:
                                if ext_code.size(address(stor0.field_0)):
                                    call address(stor0.field_0).0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args fromAddress, address(arg1), (4340277 * block.number) - (4340277 * block.number / staticblock * staticblock)
                                    if ext_call.success:
                                        return 1
    revert
}



}
