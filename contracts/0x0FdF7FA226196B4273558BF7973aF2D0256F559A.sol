contract main {




// =====================  Runtime code  =====================


#
#  - sub_e96d977f(?)
#
const sub_b3b2786d(?) = ext_call.return_data[0]

const sub_cc866c51(?) = ext_call.return_data[0]

const MIN_BET = 10^18


mapping of struct stor0;
uint256 numberOfBets;
mapping of uint256 myEarnings;
uint256 pot;
uint256 totalSupply;
mapping of struct shareholders;
uint8 minting;
uint256 stor7;
uint256 sub_46aace16;
uint256 stor9;

function totalSupply() {
    return totalSupply
}

function numberOfBets() {
    return numberOfBets
}

function sub_46aace16(?) {
    return sub_46aace16
}

function pot() {
    return pot
}

function shareholders(address arg1) {
    require calldata.size - 4 >= 32
    return shareholders[arg1].field_0, shareholders[arg1].field_256, shareholders[arg1].field_512
}

function minting() {
    return bool(minting)
}

function myTokens() {
    return shareholders[address(msg.sender)].field_0
}

function sub_d8a6b6cc(?) {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)].field_768)
}

function myEarnings() {
    return myEarnings[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function sub_23d0e65c(?) {
    return (pot / 100)
}

function mintableTokens() {
    if totalSupply > 20000 * 10^18:
        revert with 0, 'SafeMath sub failed'
    return (-totalSupply + 20000 * 10^18)
}

function bets(address arg1) {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, bool(stor0[arg1].field_768)
}

function sub_82aec052(?) {
    if stor9 > block.timestamp:
        revert with 0, 'SafeMath sub failed'
    if block.timestamp - stor9 > 3600:
        return 0
    return (-block.timestamp + stor9 + 3600)
}

function sub_903f5c67(?) {
    require calldata.size - 4 >= 64
    if not arg1:
        require arg2
        if arg1 > 0 / arg2:
            revert with 0, 'SafeMath sub failed'
        return ((0 / arg2) - arg1)
    require arg1
    if 99 * arg1 / arg1 != 99:
        revert with 0, 'SafeMath mul failed'
    require arg2
    if arg1 > 99 * arg1 / arg2:
        revert with 0, 'SafeMath sub failed'
    return ((99 * arg1 / arg2) - arg1)
}

function sub_8aa78543(?) {
    if totalSupply <= 0:
        return 0
    if not shareholders[address(msg.sender)].field_0:
        if totalSupply:
            return (0 / totalSupply)
    else:
        if shareholders[address(msg.sender)].field_0:
            if 100 * shareholders[address(msg.sender)].field_0 / shareholders[address(msg.sender)].field_0 != 100:
                revert with 0, 'SafeMath mul failed'
            if totalSupply:
                return (100 * shareholders[address(msg.sender)].field_0 / totalSupply)
    revert
}

function myDividends() {
    if shareholders[address(msg.sender)].field_512 > stor7:
        revert with 0, 'SafeMath sub failed'
    if not stor7 - shareholders[address(msg.sender)].field_512:
        if shareholders[address(msg.sender)].field_256 < shareholders[address(msg.sender)].field_256:
            revert with 0, 'SafeMath add failed'
        return shareholders[address(msg.sender)].field_256
    require stor7 - shareholders[address(msg.sender)].field_512
    if (stor7 * shareholders[address(msg.sender)].field_0) - (shareholders[address(msg.sender)].field_512 * shareholders[address(msg.sender)].field_0) / stor7 - shareholders[address(msg.sender)].field_512 != shareholders[address(msg.sender)].field_0:
        revert with 0, 'SafeMath mul failed'
    if shareholders[address(msg.sender)].field_256 + ((stor7 * shareholders[address(msg.sender)].field_0) - (shareholders[address(msg.sender)].field_512 * shareholders[address(msg.sender)].field_0) / 10 * 10^18) < shareholders[address(msg.sender)].field_256:
        revert with 0, 'SafeMath add failed'
    return (shareholders[address(msg.sender)].field_256 + ((stor7 * shareholders[address(msg.sender)].field_0) - (shareholders[address(msg.sender)].field_512 * shareholders[address(msg.sender)].field_0) / 10 * 10^18))
}

function sub_c14d81a9(?) {
    stor9 = block.timestamp
    require ext_code.size(0xd26b63194f70e0939393d23d3a5b1ed6bde5f835)
    staticcall 0xd26b63194f70e0939393d23d3a5b1ed6bde5f835.dividendsOf(address arg1, bool arg2) with:
            gas gas_remaining wei
           args address(this.address), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xd26b63194f70e0939393d23d3a5b1ed6bde5f835)
        call 0xd26b63194f70e0939393d23d3a5b1ed6bde5f835.withdraw() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not ext_call.return_data[0]:
            require totalSupply
            if stor7 + (0 / totalSupply) < stor7:
                revert with 0, 'SafeMath add failed'
            stor7 += 0 / totalSupply
        else:
            require ext_call.return_data[0]
            if 10 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10 * 10^18:
                revert with 0, 'SafeMath mul failed'
            require totalSupply
            if stor7 + (10 * 10^18 * ext_call.return_data[0] / totalSupply) < stor7:
                revert with 0, 'SafeMath add failed'
            stor7 += 10 * 10^18 * ext_call.return_data[0] / totalSupply
        if sub_46aace16 + ext_call.return_data[0] < sub_46aace16:
            revert with 0, 'SafeMath add failed'
        sub_46aace16 += ext_call.return_data[0]
}

function withdrawDividends() {
    if shareholders[address(msg.sender)].field_512 > stor7:
        revert with 0, 'SafeMath sub failed'
    shareholders[address(msg.sender)].field_512 = stor7
    if not stor7 - shareholders[address(msg.sender)].field_512:
        if shareholders[address(msg.sender)].field_256 < shareholders[address(msg.sender)].field_256:
            revert with 0, 'SafeMath add failed'
    else:
        require stor7 - shareholders[address(msg.sender)].field_512
        if (stor7 * shareholders[address(msg.sender)].field_0) - (shareholders[address(msg.sender)].field_512 * shareholders[address(msg.sender)].field_0) / stor7 - shareholders[address(msg.sender)].field_512 != shareholders[address(msg.sender)].field_0:
            revert with 0, 'SafeMath mul failed'
        if shareholders[address(msg.sender)].field_256 + ((stor7 * shareholders[address(msg.sender)].field_0) - (shareholders[address(msg.sender)].field_512 * shareholders[address(msg.sender)].field_0) / 10 * 10^18) < shareholders[address(msg.sender)].field_256:
            revert with 0, 'SafeMath add failed'
        shareholders[address(msg.sender)].field_256 += (stor7 * shareholders[address(msg.sender)].field_0) - (shareholders[address(msg.sender)].field_512 * shareholders[address(msg.sender)].field_0) / 10 * 10^18
    require shareholders[address(msg.sender)].field_256 > 0
    shareholders[address(msg.sender)].field_256 = 0
    if shareholders[address(msg.sender)].field_256 > sub_46aace16:
        revert with 0, 'SafeMath sub failed'
    sub_46aace16 -= shareholders[address(msg.sender)].field_256
    call msg.sender with:
       value shareholders[address(msg.sender)].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEarnings() {
    if block.timestamp - stor9 > 3600:
        if totalSupply > 0:
            stor9 = block.timestamp
            require ext_code.size(0xd26b63194f70e0939393d23d3a5b1ed6bde5f835)
            staticcall 0xd26b63194f70e0939393d23d3a5b1ed6bde5f835.dividendsOf(address arg1, bool arg2) with:
                    gas gas_remaining wei
                   args address(this.address), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(0xd26b63194f70e0939393d23d3a5b1ed6bde5f835)
                call 0xd26b63194f70e0939393d23d3a5b1ed6bde5f835.withdraw() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.return_data[0]:
                    require totalSupply
                    if stor7 + (0 / totalSupply) < stor7:
                        revert with 0, 'SafeMath add failed'
                    stor7 += 0 / totalSupply
                else:
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10 * 10^18:
                        revert with 0, 'SafeMath mul failed'
                    require totalSupply
                    if stor7 + (10 * 10^18 * ext_call.return_data[0] / totalSupply) < stor7:
                        revert with 0, 'SafeMath add failed'
                    stor7 += 10 * 10^18 * ext_call.return_data[0] / totalSupply
                if sub_46aace16 + ext_call.return_data[0] < sub_46aace16:
                    revert with 0, 'SafeMath add failed'
                sub_46aace16 += ext_call.return_data[0]
    require myEarnings[address(msg.sender)] > 0
    myEarnings[address(msg.sender)] = 0
    require ext_code.size(0xd26b63194f70e0939393d23d3a5b1ed6bde5f835)
    call 0xd26b63194f70e0939393d23d3a5b1ed6bde5f835.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, myEarnings[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_492790c2(?) {
    if block.timestamp - stor9 > 3600:
        if totalSupply > 0:
            stor9 = block.timestamp
            require ext_code.size(0xd26b63194f70e0939393d23d3a5b1ed6bde5f835)
            staticcall 0xd26b63194f70e0939393d23d3a5b1ed6bde5f835.dividendsOf(address arg1, bool arg2) with:
                    gas gas_remaining wei
                   args address(this.address), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(0xd26b63194f70e0939393d23d3a5b1ed6bde5f835)
                call 0xd26b63194f70e0939393d23d3a5b1ed6bde5f835.withdraw() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.return_data[0]:
                    require totalSupply
                    if stor7 + (0 / totalSupply) < stor7:
                        revert with 0, 'SafeMath add failed'
                    stor7 += 0 / totalSupply
                else:
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10 * 10^18:
                        revert with 0, 'SafeMath mul failed'
                    require totalSupply
                    if stor7 + (10 * 10^18 * ext_call.return_data[0] / totalSupply) < stor7:
                        revert with 0, 'SafeMath add failed'
                    stor7 += 10 * 10^18 * ext_call.return_data[0] / totalSupply
                if sub_46aace16 + ext_call.return_data[0] < sub_46aace16:
                    revert with 0, 'SafeMath add failed'
                sub_46aace16 += ext_call.return_data[0]
    require stor0[address(msg.sender)].field_768
    require stor0[address(msg.sender)].field_512 < block.number
    stor0[address(msg.sender)].field_768 = 0
    if block.number - 256 > stor0[address(msg.sender)].field_512:
        emit 0x8327b493: msg.sender, stor0[address(msg.sender)].field_0
    else:
        if (block.hash(stor0[address(msg.sender)].field_512) % 100) + 1 > stor0[address(msg.sender)].field_256:
            emit 0x68968dce: msg.sender, (block.hash(stor0[address(msg.sender)].field_512) % 100) + 1, stor0[address(msg.sender)].field_0
        else:
            if not stor0[address(msg.sender)].field_0:
                require stor0[address(msg.sender)].field_256
                if myEarnings[address(msg.sender)] + (0 / stor0[address(msg.sender)].field_256) < myEarnings[address(msg.sender)]:
                    revert with 0, 'SafeMath add failed'
                myEarnings[address(msg.sender)] += 0 / stor0[address(msg.sender)].field_256
                if 0 / stor0[address(msg.sender)].field_256 > pot:
                    revert with 0, 'SafeMath sub failed'
                pot -= 0 / stor0[address(msg.sender)].field_256
                emit Win(msg.sender, (block.hash(stor0[address(msg.sender)].field_512) % 100) + 1, (0 / stor0[address(msg.sender)].field_256) - stor0[address(msg.sender)].field_0);
            else:
                require stor0[address(msg.sender)].field_0
                if 99 * stor0[address(msg.sender)].field_0 / stor0[address(msg.sender)].field_0 != 99:
                    revert with 0, 'SafeMath mul failed'
                require stor0[address(msg.sender)].field_256
                if myEarnings[address(msg.sender)] + (99 * stor0[address(msg.sender)].field_0 / stor0[address(msg.sender)].field_256) < myEarnings[address(msg.sender)]:
                    revert with 0, 'SafeMath add failed'
                myEarnings[address(msg.sender)] += 99 * stor0[address(msg.sender)].field_0 / stor0[address(msg.sender)].field_256
                if 99 * stor0[address(msg.sender)].field_0 / stor0[address(msg.sender)].field_256 > pot:
                    revert with 0, 'SafeMath sub failed'
                pot -= 99 * stor0[address(msg.sender)].field_0 / stor0[address(msg.sender)].field_256
                emit Win(msg.sender, (block.hash(stor0[address(msg.sender)].field_512) % 100) + 1, (99 * stor0[address(msg.sender)].field_0 / stor0[address(msg.sender)].field_256) - stor0[address(msg.sender)].field_0);
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if block.timestamp - stor9 > 3600:
        if totalSupply > 0:
            stor9 = block.timestamp
            require ext_code.size(0xd26b63194f70e0939393d23d3a5b1ed6bde5f835)
            staticcall 0xd26b63194f70e0939393d23d3a5b1ed6bde5f835.dividendsOf(address arg1, bool arg2) with:
                    gas gas_remaining wei
                   args address(this.address), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(0xd26b63194f70e0939393d23d3a5b1ed6bde5f835)
                call 0xd26b63194f70e0939393d23d3a5b1ed6bde5f835.withdraw() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.return_data[0]:
                    require totalSupply
                    if stor7 + (0 / totalSupply) < stor7:
                        revert with 0, 'SafeMath add failed'
                    stor7 += 0 / totalSupply
                else:
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10 * 10^18:
                        revert with 0, 'SafeMath mul failed'
                    require totalSupply
                    if stor7 + (10 * 10^18 * ext_call.return_data[0] / totalSupply) < stor7:
                        revert with 0, 'SafeMath add failed'
                    stor7 += 10 * 10^18 * ext_call.return_data[0] / totalSupply
                if sub_46aace16 + ext_call.return_data[0] < sub_46aace16:
                    revert with 0, 'SafeMath add failed'
                sub_46aace16 += ext_call.return_data[0]
    require msg.sender == 0xd26b63194f70e0939393d23d3a5b1ed6bde5f835
    require 0 < arg3.length
    require minting
    if pot + arg2 < pot:
        revert with 0, 'SafeMath add failed'
    pot += arg2
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath add failed'
    if totalSupply + arg2 < 20000 * 10^18:
        if shareholders[address(arg1)].field_512 > stor7:
            revert with 0, 'SafeMath sub failed'
        shareholders[address(arg1)].field_512 = stor7
        if not stor7 - shareholders[address(arg1)].field_512:
            if shareholders[address(arg1)].field_256 < shareholders[address(arg1)].field_256:
                revert with 0, 'SafeMath add failed'
        else:
            require stor7 - shareholders[address(arg1)].field_512
            if (stor7 * shareholders[address(arg1)].field_0) - (shareholders[address(arg1)].field_512 * shareholders[address(arg1)].field_0) / stor7 - shareholders[address(arg1)].field_512 != shareholders[address(arg1)].field_0:
                revert with 0, 'SafeMath mul failed'
            if shareholders[address(arg1)].field_256 + ((stor7 * shareholders[address(arg1)].field_0) - (shareholders[address(arg1)].field_512 * shareholders[address(arg1)].field_0) / 10 * 10^18) < shareholders[address(arg1)].field_256:
                revert with 0, 'SafeMath add failed'
            shareholders[address(arg1)].field_256 += (stor7 * shareholders[address(arg1)].field_0) - (shareholders[address(arg1)].field_512 * shareholders[address(arg1)].field_0) / 10 * 10^18
        if shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 > stor7:
            revert with 0, 'SafeMath sub failed'
        shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 = stor7
        if not stor7 - shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512:
            if shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_256 < shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_256:
                revert with 0, 'SafeMath add failed'
        else:
            require stor7 - shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512
            if (stor7 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) - (shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) / stor7 - shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 != shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0:
                revert with 0, 'SafeMath mul failed'
            if shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_256 + ((stor7 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) - (shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) / 10 * 10^18) < shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_256:
                revert with 0, 'SafeMath add failed'
            shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_256 += (stor7 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) - (shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) / 10 * 10^18
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath add failed'
        totalSupply += arg2
        if not arg2:
            if shareholders[address(arg1)].field_0 < shareholders[address(arg1)].field_0:
                revert with 0, 'SafeMath add failed'
        else:
            require arg2
            if 19 * arg2 / arg2 != 19:
                revert with 0, 'SafeMath mul failed'
            if shareholders[address(arg1)].field_0 + (19 * arg2 / 20) < shareholders[address(arg1)].field_0:
                revert with 0, 'SafeMath add failed'
            shareholders[address(arg1)].field_0 += 19 * arg2 / 20
        if shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0 + (arg2 / 20) < shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0:
            revert with 0, 'SafeMath add failed'
        shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0 += arg2 / 20
        emit Mint(arg1, arg2);
    else:
        if totalSupply > 20000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        minting = 0
        if shareholders[address(arg1)].field_512 > stor7:
            revert with 0, 'SafeMath sub failed'
        shareholders[address(arg1)].field_512 = stor7
        if not stor7 - shareholders[address(arg1)].field_512:
            if shareholders[address(arg1)].field_256 < shareholders[address(arg1)].field_256:
                revert with 0, 'SafeMath add failed'
        else:
            require stor7 - shareholders[address(arg1)].field_512
            if (stor7 * shareholders[address(arg1)].field_0) - (shareholders[address(arg1)].field_512 * shareholders[address(arg1)].field_0) / stor7 - shareholders[address(arg1)].field_512 != shareholders[address(arg1)].field_0:
                revert with 0, 'SafeMath mul failed'
            if shareholders[address(arg1)].field_256 + ((stor7 * shareholders[address(arg1)].field_0) - (shareholders[address(arg1)].field_512 * shareholders[address(arg1)].field_0) / 10 * 10^18) < shareholders[address(arg1)].field_256:
                revert with 0, 'SafeMath add failed'
            shareholders[address(arg1)].field_256 += (stor7 * shareholders[address(arg1)].field_0) - (shareholders[address(arg1)].field_512 * shareholders[address(arg1)].field_0) / 10 * 10^18
        if shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 > stor7:
            revert with 0, 'SafeMath sub failed'
        shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 = stor7
        if not stor7 - shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512:
            if shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_256 < shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_256:
                revert with 0, 'SafeMath add failed'
        else:
            require stor7 - shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512
            if (stor7 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) - (shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) / stor7 - shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 != shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0:
                revert with 0, 'SafeMath mul failed'
            if shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_256 + ((stor7 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) - (shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) / 10 * 10^18) < shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_256:
                revert with 0, 'SafeMath add failed'
            shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_256 += (stor7 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) - (shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_512 * shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0) / 10 * 10^18
        if 20000 * 10^18 < totalSupply:
            revert with 0, 'SafeMath add failed'
        totalSupply = 20000 * 10^18
        if not -totalSupply + 20000 * 10^18:
            if shareholders[address(arg1)].field_0 < shareholders[address(arg1)].field_0:
                revert with 0, 'SafeMath add failed'
        else:
            require -totalSupply + 20000 * 10^18
            if (-19 * totalSupply) + 380000 * 10^18 / -totalSupply + 20000 * 10^18 != 19:
                revert with 0, 'SafeMath mul failed'
            if shareholders[address(arg1)].field_0 + ((-19 * totalSupply) + 380000 * 10^18 / 20) < shareholders[address(arg1)].field_0:
                revert with 0, 'SafeMath add failed'
            shareholders[address(arg1)].field_0 += (-19 * totalSupply) + 380000 * 10^18 / 20
        if shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0 + (-totalSupply + 20000 * 10^18 / 20) < shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0:
            revert with 0, 'SafeMath add failed'
        shareholders[0x8948e4b00deb0a5adb909f4dc5789d20d0851d71].field_0 += -totalSupply + 20000 * 10^18 / 20
        emit Mint(arg1, -totalSupply + 20000 * 10^18);
}



}
