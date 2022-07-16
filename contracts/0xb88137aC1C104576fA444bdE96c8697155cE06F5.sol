contract main {




// =====================  Runtime code  =====================


const getId = Mask(32, 224, sha3(Mask(152, 104, 'ERC20Token(address)') >> 104))


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor51;
mapping of uint8 stor102;
mapping of uint8 stor153;
uint8 paused;

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor102[address(arg1)])
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor153[address(arg1)])
}

function paused() payable {
    return bool(paused)
}

function isWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor51[address(arg1)])
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender
    require stor153[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor153[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor153[address(msg.sender)]
    stor153[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceWhitelisted() payable {
    require msg.sender
    require stor102[address(msg.sender)]
    stor102[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() payable {
    require msg.sender
    require stor51[address(msg.sender)]
    stor51[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor153[address(msg.sender)]
    require arg1
    require not stor153[address(arg1)]
    stor153[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require arg1
    require not stor102[address(arg1)]
    stor102[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require arg1
    require stor102[address(arg1)]
    stor102[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require arg1
    require not stor51[address(arg1)]
    stor51[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require msg.sender
    require stor102[address(msg.sender)]
    require not paused
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FAILED'
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
        else:
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if not uint8(stor0.field_8):
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require arg1
    if not stor51[address(arg1)]:
        require arg1
        require not stor51[address(arg1)]
        stor51[address(arg1)] = 1
        emit WhitelistAdminAdded(arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require arg1
    if not stor153[address(arg1)]:
        require arg1
        require not stor153[address(arg1)]
        stor153[address(arg1)] = 1
        emit PauserAdded(arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    paused = 0
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}



}
