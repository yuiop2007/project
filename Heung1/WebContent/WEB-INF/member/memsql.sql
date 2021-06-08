show tables;

create table member(
	mId varchar(50) not null,
	mPwd varchar(15) not null,
	mName varchar(100) not null,
	mPost varchar(10) null,
	mAddress varchar(500) null,
	mPhone varchar(300) not null,
	mEmail varchar(100) null,
	mGender int default 0,
	mRdate date not null,
	mBirth date null,
	mLever int default 0 not null,
	mBuy int default 0,
	mDrop int default 0,
	primary key(mId)
);

drop table member;

desc member;