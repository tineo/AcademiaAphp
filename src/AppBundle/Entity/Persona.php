<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Persona
 *
 * @ORM\Table(name="persona")
 * @ORM\Entity
 */
class Persona
{
    /**
     * @var string
     *
     * @ORM\Column(name="nombres", type="string", length=20, nullable=true)
     */
    private $nombres;

    /**
     * @var string
     *
     * @ORM\Column(name="apepaterno", type="string", length=20, nullable=true)
     */
    private $apepaterno;

    /**
     * @var string
     *
     * @ORM\Column(name="apematerno", type="string", length=20, nullable=true)
     */
    private $apematerno;

    /**
     * @var integer
     *
     * @ORM\Column(name="idubigeonac", type="integer", nullable=true)
     */
    private $idubigeonac;

    /**
     * @var integer
     *
     * @ORM\Column(name="fechanac", type="integer", nullable=true)
     */
    private $fechanac;

    /**
     * @var integer
     *
     * @ORM\Column(name="sexo", type="integer", nullable=true)
     */
    private $sexo;

    /**
     * @var integer
     *
     * @ORM\Column(name="estadocivil", type="integer", nullable=true)
     */
    private $estadocivil;

    /**
     * @var integer
     *
     * @ORM\Column(name="idtipodoc", type="integer", nullable=true)
     */
    private $idtipodoc;

    /**
     * @var integer
     *
     * @ORM\Column(name="nrodoc", type="integer", nullable=true)
     */
    private $nrodoc;

    /**
     * @var integer
     *
     * @ORM\Column(name="idseguro", type="integer", nullable=true)
     */
    private $idseguro;

    /**
     * @var integer
     *
     * @ORM\Column(name="nroseguro", type="integer", nullable=true)
     */
    private $nroseguro;

    /**
     * @var integer
     *
     * @ORM\Column(name="idpersona", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idpersona;


}

