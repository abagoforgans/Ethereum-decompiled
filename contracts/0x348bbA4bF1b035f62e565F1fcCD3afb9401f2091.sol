contract main {




// =====================  Runtime code  =====================


#
#  - burn(uint256 arg1)
#
const sub_43e99532(?) = block.timestamp


address owner;
mapping of uint8 stor1;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 stor4;
mapping of uint8 stor5;
array of uint256 stor6;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
mapping of uint8 stor13;
mapping of uint256 sub_2dd55312;
uint256 stor15;
uint256 stor16;
address stor17;
mapping of uint256 stor60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function sub_0ccb09a9(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor13['isTokenInApprovedTokensForLoan'][arg1])
}

function totalSupply() payable {
    return tokenByIndex.length
}

function sub_2dd55312(?) payable {
    require calldata.size - 4 >= 64
    return sub_2dd55312['NotApprovedTokensForLoan'][arg1][arg2]
}

function sub_388797ef(?) payable {
    return stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function sub_870f999b(?) payable {
    require calldata.size - 4 >= 32
    return sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_b3ca2874(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2])
}

function sub_bea6fa5d(?) payable {
    require calldata.size - 4 >= 32
    return sub_2dd55312['ApprovedTokensForLoan'][arg1]
}

function tokenURI(uint256 arg1) payable {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function sub_d27e705f(?) payable {
    require calldata.size - 4 >= 64
    return sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2]
}

function sub_e54aec00(?) payable {
    require calldata.size - 4 >= 32
    return sub_2dd55312[0x6e496e6465784f66546f6b656e496e417070726f766564546f6b656e73466f724c6f61][arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_fce86ed1(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor13['isTokenApprovedForLoan'][arg1])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return not not ownerOf[arg1]
}

function sub_f0d82764(?) payable {
    require msg.sender == owner
    stor15 = 0
    stor16 = 0
    stor17 = 0
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_2faab35b(?) payable {
    require calldata.size - 4 >= 64
    stor13['isTokenApprovedForLoan'][arg1] = uint8(arg2)
}

function sub_2efb15de(?) payable {
    if block.timestamp < stor15:
        return block.timestamp >= stor15
    return block.timestamp <= stor16
}

function sub_6fd72e8d(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    stor17 = arg1
    stor15 = arg2
    stor16 = arg3
}

function sub_9b932536(?) payable {
    require calldata.size - 4 >= 64
    sub_2dd55312[0x6e496e6465784f66546f6b656e496e417070726f766564546f6b656e73466f724c6f61][arg1] = arg2
}

function sub_3d70b0d1(?) payable {
    require calldata.size - 4 >= 96
    sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2] = arg3
}

function sub_e203eee3(?) payable {
    if block.timestamp < stor15:
        return stor17, stor15, stor16, block.timestamp >= stor15
    return stor17, stor15, stor16, block.timestamp <= stor16
}

function sub_93ae11ef(?) payable {
    require calldata.size - 4 >= 64
    sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c91ff558(?) payable {
    require calldata.size - 4 >= 32
    stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)] = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor5[stor2[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    if block.timestamp >= stor15:
        if block.timestamp <= stor16:
            if arg1 == stor17:
                return (stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)] + sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1])
    require arg1
    return stor4[address(arg1)]
}

function sub_140235ee(?) payable {
    require calldata.size - 4 >= 32
    if not stor13['isTokenInApprovedTokensForLoan'][arg1]:
        sub_2dd55312['ApprovedTokensForLoan'][sub_2dd55312[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]] = arg1
        sub_2dd55312[0x6e496e6465784f66546f6b656e496e417070726f766564546f6b656e73466f724c6f61][arg1] = stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]
        stor13['isTokenInApprovedTokensForLoan'][arg1] = 1
        require stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)] + 1 >= stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]
        stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]++
}

function sub_a6790f86(?) payable {
    require calldata.size - 4 >= 64
    if not stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2]:
        sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]] = arg2
        sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2] = sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]
        stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2] = 1
        require sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] + 1 >= sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]
        sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]++
}

function sub_e9c966f8(?) payable {
    require calldata.size - 4 >= 32
    if stor13['isTokenInApprovedTokensForLoan'][arg1]:
        require 1 <= stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]
        if sub_2dd55312[0x6e496e6465784f66546f6b656e496e417070726f766564546f6b656e73466f724c6f61][arg1] < stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)] - 1:
            sub_2dd55312[0x6e496e6465784f66546f6b656e496e417070726f766564546f6b656e73466f724c6f61][arg1] = 0
            sub_2dd55312[0x6e496e6465784f66546f6b656e496e417070726f766564546f6b656e73466f724c6f61][sub_2dd55312['ApprovedTokensForLoan'][sub_2dd55312[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)] - 1]] = sub_2dd55312[0x6e496e6465784f66546f6b656e496e417070726f766564546f6b656e73466f724c6f61][arg1]
            sub_2dd55312['ApprovedTokensForLoan'][sub_2dd55312[0x6e496e6465784f66546f6b656e496e417070726f766564546f6b656e73466f724c6f61][arg1]] = sub_2dd55312['ApprovedTokensForLoan'][sub_2dd55312[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)] - 1]
        sub_2dd55312['ApprovedTokensForLoan'][sub_2dd55312[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)] - 1] = 0
        stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]--
        stor13['isTokenInApprovedTokensForLoan'][arg1] = 0
}

function sub_7aed2586(?) payable {
    require calldata.size - 4 >= 64
    if stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2]:
        require 1 <= sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]
        if sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2] < sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1:
            sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2] = 0
            sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1]] = sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2]
            sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2]] = sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1]
        sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1] = 0
        sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]--
        stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg2] = 0
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    if block.timestamp < stor15:
        require arg1
        require arg2 < stor4[address(arg1)]
    else:
        if block.timestamp > stor16:
            require arg1
            require arg2 < stor4[address(arg1)]
        else:
            if arg1 == stor17:
                require arg2 < stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)] + sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]
            else:
                require arg1
                require arg2 < stor4[address(arg1)]
    if block.timestamp >= stor15:
        if block.timestamp <= stor16:
            if arg1 == stor17:
                if arg2 >= sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]:
                    return sub_2dd55312['ApprovedTokensForLoan'][arg2 - sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]]
                return sub_2dd55312['NotApprovedTokensForLoan'][arg1][arg2]
    require arg1
    if block.timestamp < stor15:
        require arg1
        require arg2 < stor4[address(arg1)]
    else:
        if block.timestamp > stor16:
            require arg1
            require arg2 < stor4[address(arg1)]
        else:
            if arg1 == stor17:
                require arg2 < stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)] + sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]
            else:
                require arg1
                require arg2 < stor4[address(arg1)]
    require arg2 < stor6[address(arg1)]
    return stor6[address(arg1)][arg2]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor13['isTokenApprovedForLoan'][arg3]:
        if stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3]:
            require 1 <= sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]
            if sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3] < sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1:
                sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3] = 0
                sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1]] = sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3]
                sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3]] = sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1]
            sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1] = 0
            sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]--
            stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3] = 0
        if not stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2][arg3]:
            sub_2dd55312['NotApprovedTokensForLoan'][arg2][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]] = arg3
            sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2][arg3] = sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]
            stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2][arg3] = 1
            require sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2] + 1 >= sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]
            sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]++
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= stor4[address(arg1)]
    stor4[address(arg1)]--
    stor4[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= stor6[address(arg1)]
    if stor7[arg3] != stor6[address(arg1)] - 1:
        require stor6[address(arg1)] - 1 < stor6[address(arg1)]
        require stor7[arg3] < stor6[address(arg1)]
        stor6[address(arg1)][stor7[arg3]] = stor6[address(arg1)][stor6[address(arg1)]]
        stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    stor6[address(arg1)]--
    if stor6[address(arg1)] > stor6[address(arg1)] - 1:
        idx = stor6[address(arg1)] - 1
        while stor6[address(arg1)] > idx:
            stor6[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = stor6[address(arg2)]
    stor6[address(arg2)]++
    stor6[address(arg2)][stor6[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor13['isTokenApprovedForLoan'][arg3]:
        if stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3]:
            require 1 <= sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]
            if sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3] < sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1:
                sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3] = 0
                sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1]] = sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3]
                sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3]] = sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1]
            sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1] = 0
            sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]--
            stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3] = 0
        if not stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2][arg3]:
            sub_2dd55312['NotApprovedTokensForLoan'][arg2][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]] = arg3
            sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2][arg3] = sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]
            stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2][arg3] = 1
            require sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2] + 1 >= sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]
            sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]++
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= stor4[address(arg1)]
    stor4[address(arg1)]--
    stor4[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= stor6[address(arg1)]
    if stor7[arg3] != stor6[address(arg1)] - 1:
        require stor6[address(arg1)] - 1 < stor6[address(arg1)]
        require stor7[arg3] < stor6[address(arg1)]
        stor6[address(arg1)][stor7[arg3]] = stor6[address(arg1)][stor6[address(arg1)]]
        stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    stor6[address(arg1)]--
    if stor6[address(arg1)] > stor6[address(arg1)] - 1:
        idx = stor6[address(arg1)] - 1
        while stor6[address(arg1)] > idx:
            stor6[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = stor6[address(arg2)]
    stor6[address(arg2)]++
    stor6[address(arg2)][stor6[address(arg2)]] = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 160] = 'isTokenApprovedForLoan'
    mem[ceil32(arg4.length) + 182] = arg3
    mem[ceil32(arg4.length) + 128] = 54
    if not stor13[mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]]:
        if stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3]:
            require 1 <= sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]
            if sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3] < sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1:
                sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3] = 0
                sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1]] = sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3]
                sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3]] = sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1]
            sub_2dd55312['NotApprovedTokensForLoan'][arg1][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1] - 1] = 0
            sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1]--
            stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg1][arg3] = 0
        if not stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2][arg3]:
            sub_2dd55312['NotApprovedTokensForLoan'][arg2][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]] = arg3
            sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2][arg3] = sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]
            stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2][arg3] = 1
            require sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2] + 1 >= sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]
            sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][arg2]++
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= stor4[address(arg1)]
    stor4[address(arg1)]--
    stor4[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= stor6[address(arg1)]
    if stor7[arg3] != stor6[address(arg1)] - 1:
        require stor6[address(arg1)] - 1 < stor6[address(arg1)]
        require stor7[arg3] < stor6[address(arg1)]
        stor6[address(arg1)][stor7[arg3]] = stor6[address(arg1)][stor6[address(arg1)]]
        stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    stor6[address(arg1)]--
    if stor6[address(arg1)] > stor6[address(arg1)] - 1:
        idx = stor6[address(arg1)] - 1
        while stor6[address(arg1)] > idx:
            stor6[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = stor6[address(arg2)]
    stor6[address(arg2)]++
    stor6[address(arg2)][stor6[address(arg2)]] = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function mint(string arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    require sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1 >= sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256]
    sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256]++
    require owner
    require not ownerOf[stor14[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1]
    ownerOf[stor14[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1] = owner
    stor4[stor0]++
    emit Transfer(0, owner, sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1);
    stor7[stor14[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1] = stor6[stor0]
    stor6[stor0]++
    stor6[stor0][stor6[stor0]] = sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1
    stor9[stor14[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1
    require ownerOf[stor14[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1]
    tokenURI[stor14[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 160] = 'isTokenApprovedForLoan'
    mem[ceil32(arg1.length) + 182] = sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1
    mem[ceil32(arg1.length) + 128] = 54
    stor13[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]] = uint8(arg2)
    if not arg2:
        if not stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][stor0][stor14[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1]:
            sub_2dd55312['NotApprovedTokensForLoan'][stor0][sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][stor0]] = sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1
            sub_2dd55312[0x6e496e6465784f66546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][stor0][sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1] = sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][stor0]
            stor13[0xfe6973546f6b656e496e4e6f74417070726f766564546f6b656e73466f724c6f61][stor0][stor14[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1] = 1
            require sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][stor0] + 1 >= sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][stor0]
            sub_2dd55312[0x6e746f74616c4e756d6265724f66546f6b656e73496e4e6f74417070726f766564546f6b656e73466f724c6f61][stor0]++
    else:
        if not stor13['isTokenInApprovedTokensForLoan'][stor14[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1]:
            sub_2dd55312['ApprovedTokensForLoan'][sub_2dd55312[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]] = sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1
            sub_2dd55312[0x6e496e6465784f66546f6b656e496e417070726f766564546f6b656e73466f724c6f61][sub_2dd55312[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1] = stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]
            stor13['isTokenInApprovedTokensForLoan'][stor14[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256] + 1] = 1
            require stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)] + 1 >= stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]
            stor14[('name', 'stor6E74', 60398099371470675834050368924980964331936108187240861209367130750613347580555137840969984268800126817)]++
}



}
