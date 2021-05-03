pragma solidity ^0.5.3;

/*
   Email: ashourics@gmail.com
   Telegram: @BerlinerCoder
   Web: http://ashoury.de
   GitHub: https://github.com/mohammadreza-ashouri/
   
*/

contract stablecoin{

	address cx = 0x70fdAc39369d55464b610e4fCbbd4b78E003eD20;
	mapping(address => uint) tokens;
	
	

	function transfer(address _to, uint _amount) public payable{
	
		require(_amount <= tokens[msg.sender]);
		tokens[msg.sender]-=_amount;
		tokens[_to]+=_amount;
	}
	
	function ownerOf(uint _tokenId) public view returns(address){
		return tokens[_id].address;
	}

	function approve(address _approved, uint _tokenId) payable{
		require(tokens[msg.sender]==_tokenId);
		tokens[_approved]=_tokenId;
	}
	
	function approval(address _owner, address _approved,uint _tokenId){
	
		require(tokens[_owner]==_tokenId);
		tokens[_approved]=_tokenId;
	}
	
	function balanceOf(address _owner) public view returns (uint){
	
		return tokens[_owner];
	}
	
	function TransferFrom(address _from, address _to, uint _tokenId) payable{
	
		require(tokens[_from]==_tokenId);
		tokens[_from]=0;
		tokens[_to]=_tokenId;
	}
	
	
	function mint(address _to, uint _amount) payable{
	
		tokens[cx]+=_amount;
		tokens[_to]+=_amount;

	}
	function burn(address _from,uint _amount) payable{
	
		tokens[cx]-=_amount;
		tokens[_from]-=_amount;
	}
}