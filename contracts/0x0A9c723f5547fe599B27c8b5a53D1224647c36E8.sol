contract main {




// =====================  Runtime code  =====================


uint128 stor10D6; offset 160
address stor10D6;
uint128 stor7050; offset 160
address stor7050;
uint256 stor7050;

function _fallback() payable {
    if msg.sender == address(stor10D6.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe43616e6e6f742063616c6c2066616c6c6261636b2066756e6374696f6e2066726f6d207468652070726f78792061646d69,
                    mem[214 len 14]
    delegate uint256(stor7050.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function admin() {
    if msg.sender == address(stor10D6.field_0):
        return address(stor10D6.field_0)
    if msg.sender == address(stor10D6.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe43616e6e6f742063616c6c2066616c6c6261636b2066756e6374696f6e2066726f6d207468652070726f78792061646d69,
                    mem[214 len 14]
    delegate uint256(stor7050.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function implementation() {
    if msg.sender == address(stor10D6.field_0):
        return address(stor7050.field_0)
    if msg.sender == address(stor10D6.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe43616e6e6f742063616c6c2066616c6c6261636b2066756e6374696f6e2066726f6d207468652070726f78792061646d69,
                    mem[214 len 14]
    delegate uint256(stor7050.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor10D6.field_0) != msg.sender:
        if msg.sender == address(stor10D6.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        50,
                        0xfe43616e6e6f742063616c6c2066616c6c6261636b2066756e6374696f6e2066726f6d207468652070726f78792061646d69,
                        mem[214 len 14]
        delegate uint256(stor7050.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x6e43616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[223 len 5]
    address(stor7050.field_0) = arg1
    Mask(96, 0, stor7050.field_160) = 0
    emit Upgraded(arg1);
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor10D6.field_0) != msg.sender:
        if msg.sender == address(stor10D6.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        50,
                        0xfe43616e6e6f742063616c6c2066616c6c6261636b2066756e6374696f6e2066726f6d207468652070726f78792061646d69,
                        mem[214 len 14]
        delegate uint256(stor7050.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6e43616e6e6f74206368616e6765207468652061646d696e206f6620612070726f787920746f20746865207a65726f20616464726573,
                    mem[218 len 10]
    emit AdminChanged(address(stor10D6.field_0), arg1);
    address(stor10D6.field_0) = arg1
    Mask(96, 0, stor10D6.field_160) = 0
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if address(stor10D6.field_0) != msg.sender:
        if msg.sender == address(stor10D6.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        50,
                        0xfe43616e6e6f742063616c6c2066616c6c6261636b2066756e6374696f6e2066726f6d207468652070726f78792061646d69,
                        mem[214 len 14]
        delegate uint256(stor7050.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x6e43616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[223 len 5]
    address(stor7050.field_0) = arg1
    Mask(96, 0, stor7050.field_160) = 0
    emit Upgraded(arg1);
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    require delegate.return_code
}

function initialize(address arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require not address(stor7050.field_0)
    mem[ceil32(arg3.length) + 128 len 35] = 0x736f72672e7a657070656c696e6f732e70726f78792e696d706c656d656e746174696f
    require 0x7050c9e0f4ca769c69bd3a8ef740bc37934f8e2c036e5a723fd8ee048ed3f8c3 == sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), Mask(8 * -arg3.length + ceil32(arg3.length) + 3, 0, 0x736f72672e7a657070656c696e6f732e70726f78792e696d706c656d656e746174696f))
    if ext_code.size(arg1) <= 0:
        revert with 0, 
                    32,
                    59,
                    0x6e43616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[ceil32(arg3.length) + 255 len 5]
    address(stor7050.field_0) = arg1
    Mask(96, 0, stor7050.field_160) = 0
    if arg3.length <= 0:
        require 0x10d6a54a4754c8869d6886b5f5d7fbfa5b4522237ea5c60d11bc4e7a1ff9390b == sha3(Mask(208, -(8 * ceil32(arg3.length) + -arg3.length + 26) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 26) + 256)
    else:
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        delegate arg1 with:
           funct (Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256)
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
        require delegate.return_code
        if not return_data.size:
            require 0x10d6a54a4754c8869d6886b5f5d7fbfa5b4522237ea5c60d11bc4e7a1ff9390b == sha3(Mask(208, -(8 * ceil32(arg3.length) + -arg3.length + 26) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 26) + 256)
        else:
            require 0x10d6a54a4754c8869d6886b5f5d7fbfa5b4522237ea5c60d11bc4e7a1ff9390b == sha3('org.zeppelinos.proxy.admin')
    address(stor10D6.field_0) = arg2
    Mask(96, 0, stor10D6.field_160) = 0
}



}
