contract main {




// =====================  Runtime code  =====================


const name = 'Ethex Supporter Reward BETA 2'

const decimals = 18

const symbol = 'ESRB'


uint256 totalSupply;
mapping of uint256 balanceOf;
uint256 sub_b76d0af5;
uint256 sub_377bc595;
uint256 sub_a94b2291;
uint256 sub_4de79cda;
mapping of uint256 stor6;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function sub_377bc595(?) {
    return sub_377bc595
}

function sub_4de79cda(?) {
    return sub_4de79cda
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_a94b2291(?) {
    return sub_a94b2291
}

function sub_b76d0af5(?) {
    return sub_b76d0af5
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function sub_20208b66(?) {
    return (sub_b76d0af5 + sub_377bc595 - block.timestamp)
}

function isContract(address arg1) {
    require calldata.size - 4 >= 32
    return (uint32(ext_code.size(arg1)) > 0)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function canCollect(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(this.address)
        staticcall this.address.0xc4b599f8 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if stor6[address(arg1)] < sub_377bc595:
                return 1
            if block.timestamp >= sub_377bc595 + sub_b76d0af5:
                return 1
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_c4b599f8(?) {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_b76d0af5 + sub_377bc595:
        if not sub_4de79cda:
            return 0
        require ext_code.size(this.address)
        staticcall this.address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_4de79cda:
                return (sub_a94b2291 * ext_call.return_data[0] / sub_4de79cda)
        else:
            if ext_call.return_data[0]:
                if sub_a94b2291 * ext_call.return_data[0] / ext_call.return_data[0] == sub_a94b2291:
                    if sub_4de79cda:
                        return (sub_a94b2291 * ext_call.return_data[0] / sub_4de79cda)
    else:
        require ext_code.size(this.address)
        staticcall this.address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(this.address)
        staticcall this.address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                return (eth.balance(this.address) * ext_call.return_data[0] / ext_call.return_data[0])
        else:
            if ext_call.return_data[0]:
                if eth.balance(this.address) * ext_call.return_data[0] / ext_call.return_data[0] == eth.balance(this.address):
                    if ext_call.return_data[0]:
                        return (eth.balance(this.address) * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function collect(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.0x16279055 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp < sub_377bc595 + sub_b76d0af5:
            if sub_377bc595 > stor6[address(arg1)]:
                if sub_4de79cda > 0:
                    require ext_code.size(this.address)
                    staticcall this.address.0x38c32b04 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                             gas 2300 wei
                    else:
                        require ext_code.size(this.address)
                        staticcall this.address.0xc4b599f8 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            sub_a94b2291 = eth.balance(this.address)
            require ext_code.size(this.address)
            staticcall this.address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_4de79cda = ext_call.return_data[0]
            if block.timestamp > stor6[address(arg1)]:
                if sub_4de79cda > 0:
                    require ext_code.size(this.address)
                    staticcall this.address.0x38c32b04 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                             gas 2300 wei
                    else:
                        require ext_code.size(this.address)
                        staticcall this.address.0xc4b599f8 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if sub_377bc595 != block.timestamp:
                sub_377bc595 = block.timestamp
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[msg.sender]:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require ext_code.size(this.address)
    staticcall this.address.0x16279055 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp < sub_377bc595 + sub_b76d0af5:
            if sub_377bc595 > stor6[address(msg.sender)]:
                if sub_4de79cda > 0:
                    require ext_code.size(this.address)
                    staticcall this.address.0x38c32b04 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        stor6[address(msg.sender)] = block.timestamp
                        call msg.sender with:
                             gas 2300 wei
                    else:
                        require ext_code.size(this.address)
                        staticcall this.address.0xc4b599f8 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(msg.sender)] = block.timestamp
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            sub_a94b2291 = eth.balance(this.address)
            require ext_code.size(this.address)
            staticcall this.address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_4de79cda = ext_call.return_data[0]
            if block.timestamp > stor6[address(msg.sender)]:
                if sub_4de79cda > 0:
                    require ext_code.size(this.address)
                    staticcall this.address.0x38c32b04 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        stor6[address(msg.sender)] = block.timestamp
                        call msg.sender with:
                             gas 2300 wei
                    else:
                        require ext_code.size(this.address)
                        staticcall this.address.0xc4b599f8 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(msg.sender)] = block.timestamp
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if sub_377bc595 != block.timestamp:
                sub_377bc595 = block.timestamp
    require ext_code.size(this.address)
    staticcall this.address.0x16279055 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp < sub_377bc595 + sub_b76d0af5:
            if sub_377bc595 > stor6[address(arg1)]:
                if sub_4de79cda > 0:
                    require ext_code.size(this.address)
                    staticcall this.address.0x38c32b04 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                             gas 2300 wei
                    else:
                        require ext_code.size(this.address)
                        staticcall this.address.0xc4b599f8 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            sub_a94b2291 = eth.balance(this.address)
            require ext_code.size(this.address)
            staticcall this.address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_4de79cda = ext_call.return_data[0]
            if block.timestamp > stor6[address(arg1)]:
                if sub_4de79cda > 0:
                    require ext_code.size(this.address)
                    staticcall this.address.0x38c32b04 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                             gas 2300 wei
                    else:
                        require ext_code.size(this.address)
                        staticcall this.address.0xc4b599f8 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if sub_377bc595 != block.timestamp:
                sub_377bc595 = block.timestamp
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require ext_code.size(this.address)
    staticcall this.address.0x16279055 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp < sub_377bc595 + sub_b76d0af5:
            if sub_377bc595 > stor6[address(arg1)]:
                if sub_4de79cda > 0:
                    require ext_code.size(this.address)
                    staticcall this.address.0x38c32b04 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                             gas 2300 wei
                    else:
                        require ext_code.size(this.address)
                        staticcall this.address.0xc4b599f8 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            sub_a94b2291 = eth.balance(this.address)
            require ext_code.size(this.address)
            staticcall this.address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_4de79cda = ext_call.return_data[0]
            if block.timestamp > stor6[address(arg1)]:
                if sub_4de79cda > 0:
                    require ext_code.size(this.address)
                    staticcall this.address.0x38c32b04 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                             gas 2300 wei
                    else:
                        require ext_code.size(this.address)
                        staticcall this.address.0xc4b599f8 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(arg1)] = block.timestamp
                        call arg1 with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if sub_377bc595 != block.timestamp:
                sub_377bc595 = block.timestamp
    require ext_code.size(this.address)
    staticcall this.address.0x16279055 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp < sub_377bc595 + sub_b76d0af5:
            if sub_377bc595 > stor6[address(arg2)]:
                if sub_4de79cda > 0:
                    require ext_code.size(this.address)
                    staticcall this.address.0x38c32b04 with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        stor6[address(arg2)] = block.timestamp
                        call arg2 with:
                             gas 2300 wei
                    else:
                        require ext_code.size(this.address)
                        staticcall this.address.0xc4b599f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(arg2)] = block.timestamp
                        call arg2 with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            sub_a94b2291 = eth.balance(this.address)
            require ext_code.size(this.address)
            staticcall this.address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_4de79cda = ext_call.return_data[0]
            if block.timestamp > stor6[address(arg2)]:
                if sub_4de79cda > 0:
                    require ext_code.size(this.address)
                    staticcall this.address.0x38c32b04 with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        stor6[address(arg2)] = block.timestamp
                        call arg2 with:
                             gas 2300 wei
                    else:
                        require ext_code.size(this.address)
                        staticcall this.address.0xc4b599f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(arg2)] = block.timestamp
                        call arg2 with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if sub_377bc595 != block.timestamp:
                sub_377bc595 = block.timestamp
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
