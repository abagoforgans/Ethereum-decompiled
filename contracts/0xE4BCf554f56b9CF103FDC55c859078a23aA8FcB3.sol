contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getMaxBet = ext_call.return_data[0]

const getTargetBalance = eth.balance(0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15)


uint8 stor0;
address stor0; offset 8

function sub_4fc59df4(?) {
    return bool(uint8(stor0.field_0))
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == address(stor0.field_8)
    call address(stor0.field_8) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_82a42b32(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15)
    staticcall 0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15.0xf4d024da with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0]
}

function random(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15)
    staticcall 0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15.0xf4d024da with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require arg1
    return (sha3(block.hash(ext_call.return_data[0]), block.timestamp, arg2) % arg1)
}

function sub_744f78d2(?) payable {
    require msg.sender == address(stor0.field_8)
    require ext_code.size(0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15)
    staticcall 0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15.maxBet() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15)
    call 0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15.play(uint8 arg1) with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.field_0) = 1
}

function sub_473b97ea(?) {
    require msg.sender == address(stor0.field_8)
    require 1 == bool(uint8(stor0.field_0))
    require ext_code.size(0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15)
    staticcall 0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15.0xf4d024da with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if sha3(block.hash(ext_call.return_data[0]), block.timestamp, this.address) % 1200 > 0:
        if sha3(block.hash(ext_call.return_data[0]), block.timestamp, this.address) % 1200 < 200:
            require ext_code.size(0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15)
            call 0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15.result() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint8(stor0.field_0) = 0
        else:
            if sha3(block.hash(ext_call.return_data[0]), block.timestamp, this.address) % 1200 > 400:
                if sha3(block.hash(ext_call.return_data[0]), block.timestamp, this.address) % 1200 < 600:
                    require ext_code.size(0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15)
                    call 0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15.result() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor0.field_0) = 0
                else:
                    if sha3(block.hash(ext_call.return_data[0]), block.timestamp, this.address) % 1200 > 800:
                        if sha3(block.hash(ext_call.return_data[0]), block.timestamp, this.address) % 1200 < 1000:
                            require ext_code.size(0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15)
                            call 0x2732dd0f79f6cf4f257232ea2291ffbab2c18c15.result() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor0.field_0) = 0
}



}
