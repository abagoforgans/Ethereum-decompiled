contract main {




// =====================  Runtime code  =====================


uint8 paused;
address owner; offset 8
uint128 stor9F2B; offset 160
address permAddress;
uint128 storBE2C; offset 160
address implAddress;

function paused() payable {
    return bool(paused)
}

function getImplAddress() payable {
    require not paused
    return implAddress
}

function getPermAddress() payable {
    require not paused
    return permAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function unpause() payable {
    if msg.sender == owner:
        require paused
        paused = 0
        emit Unpause()
}

function pause() payable {
    if msg.sender == owner:
        require not paused
        paused = 1
        emit Pause()
}

function requestUpgrade(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if msg.sender == owner:
        require not paused
        call permAddress with:
             gas gas_remaining wei
            args arg1[all]
}

function upgradePerm(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == permAddress
    require not paused
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0xfe43616e6e6f742073657420612070726f7879207065726d697373696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[219 len 9]
    permAddress = arg1
    stor9F2B = 0
    return 1
}

function upgradeImpl(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == permAddress
    require not paused
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x7343616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[223 len 5]
    implAddress = arg1
    storBE2C = 0
    return 1
}



}
